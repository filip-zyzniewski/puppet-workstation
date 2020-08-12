node default {
  include cron_puppet
  include packages
  include git_credential_libsecret
}
