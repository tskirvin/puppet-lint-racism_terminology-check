PuppetLint.new_check(:racism_terminology) do
  # rubocop:disable Style/Next
  def check
    manifest_lines.each_with_index do |line, idx|
      if line =~ /\b(master|slave)\b/
        notify(
          :warning,
          message: 'master/slave terminology, perhaps leader/follower?',
          line: idx + 1,
          column: line.length
        )
      end

      if line =~ /\b(blacklist|whitelist)\b/
        notify(
          :warning,
          message: 'blacklist/whitelist terminology, perhaps blocklist/approvelist?',
          line: idx + 1,
          column: line.length
        )
      end
    end
  end
  # rubocop:enable Style/Next
end
