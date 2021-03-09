# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

class puppet::periodic (
    String $telegraf_user,
    String $telegraf_password,
    String $puppet_env          = 'production',
    String $puppet_repo         = 'https://github.com/mozilla-platform-ops/ronin_puppet.git',
    String $puppet_branch       = 'master',
    String $puppet_notify_email = 'puppet-ronin-reports@mozilla.com',
    String $smtp_relay_host     = 'localhost',
    Hash $meta_data             = {},
) {

    include puppet::setup

    case $::operatingsystem {
        'Darwin': {
            file {
                '/usr/local/bin/run-puppet-periodic.sh':
                    owner   => 'root',
                    group   => 'wheel',
                    mode    => '0755',
                    content => template('puppet/puppet-darwin-run-puppet-periodic.sh.erb');
            }
            # XXX cron
        }
        default: {
            fail("${module_name} does not support ${::operatingsystem}")
        }
    }

}