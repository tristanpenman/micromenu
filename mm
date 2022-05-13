#!/usr/bin/env ruby

require 'tty-prompt'

home = Dir.getwd

def bye
  puts
  puts "Bye!"
  exit
end

def prompt
  $prompt ||= begin
    p = TTY::Prompt.new(interrupt: :signal)
    p.on(:keypress) do |event|
      if event.value.to_i.to_s == event.value
        p.trigger(:keyenter)
      end
    end
    p.on(:keyescape) do |event|
      bye
    end
    p
  end
  $prompt
end

def choose(options)
  if ARGV.length > 0
    ARGV.shift
  else
    begin
      help = "(Use ↑/↓ arrow keys or numbers to select)"
      prompt.select('Select an action:', options, enum: ')', cycle: true, help: help)
    rescue TTY::Reader::InputInterrupt
      bye
    end
  end
end

def args
  if ARGV.length > 0
    ARGV
  else
    prompt.ask('Arguments:')&.split || []
  end
end

Kernel.trap( "INT" ) { bye }

puts "✨ μMenu ✨"

loop do
  files = Dir.glob('*').sort
  exit if files.empty?

  dirs = files.select { |f| File.directory? f }
  execs = files.select { |f| File.executable? f } - dirs
  list = dirs + execs
  options = list.map.with_index do |name, value|
    {
      name: dirs.include?(name) ? "📁 #{name}" : name,
      value: value + 1
    }
  end

  choice = list[choose(options).to_i - 1]
  puts "⤷ #{choice}"

  if dirs.include?(choice)
    Dir.chdir choice
  else
    system(File.expand_path(choice), *args)
    Dir.chdir home
    exit
  end
end
