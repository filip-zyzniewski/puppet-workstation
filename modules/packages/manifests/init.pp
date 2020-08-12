class packages {
  $names = [
    'geeqie',
    'git',
    'powertop',
    'puppet',
    'tmux',
    'unrar',
    'vim',
  ]

  $names.each |String $package| {
    package { $package:
      ensure => installed,
    }
  }
}
