require 'spec_helper'

describe 'racist_terminology' do
  context 'boring' do
    let(:code) do
      <<-FILE_BLOCK
        file { '/tmp/boring': }
      FILE_BLOCK
    end

    it 'should detect no problems' do
      is_expected.to have(0).problems
    end
  end

  context 'master filename' do
    let(:code) do
      <<-FILE_BLOCK
        file { '/tmp/master': }
      FILE_BLOCK
    end

    it 'should detect a problems' do
      expect(problems).to have(1).problems
    end
  end

  context 'slave filename' do
    let(:code) do
      <<-FILE_BLOCK
        file { '/tmp/slave': }
      FILE_BLOCK
    end

    it 'should detect a problems' do
      expect(problems).to have(1).problems
    end
  end

  context 'blacklist filename' do
    let(:code) do
      <<-FILE_BLOCK
        class file_resource {
          file { '/tmp/blacklist': mode => '0600' }
        }
      FILE_BLOCK
    end

    it 'should detect a problems' do
      expect(problems).to have(1).problems
    end
  end

  context 'whitelist filename' do
    let(:code) do
      <<-FILE_BLOCK
        class file_resource {
          file { '/tmp/whitelist': mode => '0600' }
        }
      FILE_BLOCK
    end

    it 'should detect a problems' do
      expect(problems).to have(1).problems
    end
  end
end
