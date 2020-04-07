require_relative '../lib/commicop.rb'
require_relative '../lib/gitcommands.rb'

RSpec.describe Commicop do
  include GitCommandsModule
  let(:branch) { 'master' }
  let(:git_dir) { ENV['DEFAULT_GIT_DIR'] }
  let(:last_pushed_commit) { `git --git-dir #{git_dir} rev-parse origin/#{branch}`.chomp }
  let(:command) { "git --git-dir #{git_dir} rev-list #{last_pushed_commit}..HEAD --abbrev-commit" }
  let(:commits_list) { `#{command}`.chomp.split(/\n+/).reverse! }
  let(:commicop) { Commicop.new(branch, git_dir) }
  let(:non_existent_branch) { 'dvelop' }

  let(:capitalized_subject_offenses) do
    [{ err_code: 'Style/CapitalizedSubject', err_line: 'add capital case subject'\
  '  body text ex', sha1: commits_list[0], sugesstion: 'Use capitalized message subjects' }]
  end

  let(:body_required_offenses) do
    [{ err_code: 'Layout/BodyRequired',
       err_line: 'Add subject too long...........................  body text ex',
       sha1: commits_list[1],
       sugesstion: 'Add a body message' }]
  end

  let(:imperative_subject_offenses) do
    [{ err_code: 'Layout/ImperativeSubject', err_line: 'Subject without imperative verb'\
   '  body text ex', sha1: commits_list[2], sugesstion: 'Use an standardized imperative verb for subject' }]
  end

  let(:subject_lenght_offenses) do
    [{ err_code: 'Layout/SubjectLenght', err_line: 'Add subject length with more than 50 characters check...',
       sha1: commits_list[3], sugesstion: 'Subject is too long [56/50]' }]
  end

  let(:body_length_offenses) do
    [{ err_code: 'Metrics/BodyLength', err_line: 'Subject without imperative verb  body text ex',
       sha1: commits_list[4], sugesstion: 'Use an standardized imperative verb for subject' }]
  end

  let(:methods) do
    [{ method: 'capitalized_subject', params: { 'Enabled' => true } },
     { method: 'subject_length', params: { 'Enabled' => true } },
     { method: 'body_length', params: { 'Enabled' => true } },
     { method: 'imperative_subject', params: { 'Enabled' => true } },
     { method: 'body_required', params: { 'Enabled' => true } },
     { method: 'valid_grammar', params: { 'Enabled' => true } }]
  end

  describe '#initialize' do
    it 'throws an NoBranchFoundError when is initialized with a non existent branch' do
      expect { Commicop.new(non_existent_branch, git_dir) }.to raise_error(ErrorsModule::NoBranchFoundError)
    end
  end
end
