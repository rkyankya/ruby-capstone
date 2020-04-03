#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/commicop'

branch = ARGV.first
git_dir = ARGV[1]
commicop = Commicop.new(branch, git_dir)
commicop.check_params
puts commicop.formatted_result
