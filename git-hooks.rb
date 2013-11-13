require 'formula'

class GitHooks < Formula

  homepage 'https://github.com/icefox/git-hooks'
  head 'https://github.com/icefox/git-hooks.git'

  def install
    bin.install "git-hooks"
  end

  def caveats
    <<-EOS.undent
      Run 'git hooks --install' Inside a git project to change that projects
      git hooks to use git-hooks hooks.  'git hooks --uninstall' can be run at
      any time to go back to the old hooks that were installed before
      (typically the default which does nothing).

      Run 'git hooks --installglobal' to force any new git repository or any
      git repository you clone to have a reminders to install git hooksi. (It
      can't be on by default for security reasons of course)
    EOS
  end

end
