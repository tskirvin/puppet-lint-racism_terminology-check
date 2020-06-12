PuppetLint.new_check(:racism_terminology) do
  def check
    manifest_lines.each_with_index do |line, idx|
      if line =~ %r{/(master|slave)/w}
        notify(
          warning,
          message: 'master/slave terminology, perhaps leader/follower?',
          line: idx + 1,
          column: 1
        )
      end
      if line =~ %r{/(blacklist|whitelist)/w}
        notify(
          warning,
          message: 'blacklist/whitelist terminology, perhaps blocklist/approvelist?',
          line: idx + 1,
          column: 1
        )
      end
    end
  end
end
