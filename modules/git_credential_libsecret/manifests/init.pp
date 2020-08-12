
class git_credential_libsecret {
  $credential_helper_dir = '/usr/share/doc/git/contrib/credential/libsecret'
  $credential_helper_basename = 'git-credential-libsecret'
  $credential_helper = "$credential_helper_dir/$credential_helper_basename"

  package { 'libsecret-1-dev':
    ensure => installed,
  } 

  exec { 'make-git-credential-libsecret':
    command => "/usr/bin/make $credential_helper_basename",
    cwd => $credential_helper_dir,
    creates => "$credential_helper",
  }

  exec { 'configure-credential-helper':
    command => "/usr/bin/git config --system credential.helper $credential_helper"
  }
}
