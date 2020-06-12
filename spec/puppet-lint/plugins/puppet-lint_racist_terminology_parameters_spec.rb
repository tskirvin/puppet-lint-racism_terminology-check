require 'spec_helper'

describe 'racist_terminology' do

  context 'boring filename' do
   let(:code) do
      <<-EOS
        class file_resource {
          file { '/tmp/boring': mode => '0600' }
        }
      EOS
    end

    it 'should detect no problems' do
      expect(problems).to have(0).problems
    end
  end

  context 'master filename' do
   let(:code) do
      <<-EOS
        class file_resource {
          file { '/tmp/master': mode => '0600' }
        }
      EOS
    end

    it 'should detect a problems' do
      expect(problems).to have(1).problems
    end
  end

  context 'slave filename' do
   let(:code) do
      <<-EOS
        class file_resource {
          file { '/tmp/slave': mode => '0600' }
        }
      EOS
    end

    it 'should detect a problems' do
      expect(problems).to have(1).problems
    end
  end

  context 'blacklist filename' do
   let(:code) do
      <<-EOS
        class file_resource {
          file { '/tmp/blacklist': mode => '0600' }
        }
      EOS
    end

    it 'should detect a problems' do
      expect(problems).to have(1).problems
    end
  end

  context 'whitelist filename' do
   let(:code) do
      <<-EOS
        class file_resource {
          file { '/tmp/whitelist': mode => '0600' }
        }
      EOS
    end

    it 'should detect a problems' do
      expect(problems).to have(1).problems
    end
  end

end
