#!/usr/bin/env ruby

require_relative '../lib/commicop'
require_relative '../lib/read.rb'
require_relative '../lib/parse_js.rb'

file_data = ReadFile.new.get_file_data('./assets/test_file.js')
js_parse = JsParse.new(file_data)
js_parse.pass_lines
