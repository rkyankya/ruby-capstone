#!/usr/bin/env ruby

require_relative '../lib/reader.rb'
require_relative '../lib/validator.rb'

file_data = ReadFile.new.get_file_data('./assets/test_file.js')
js_parse = Parse.new(file_data)
js_parse.pass_lines
