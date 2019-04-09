require 'spec_helper'

describe 'apache::config' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      it { is_expected.to contain_file('/etc/httpd/conf/httpd.conf')
        .with(
        ensure: 'file',
        )
      }
      it { is_expected.to contain_file('/var/www')
        .with(
        ensure: 'directory',
        )
      }
      it { is_expected.to contain_file('/var/www/index.html')
        .with(
        ensure: 'file',
        )
      }

      it { is_expected.to compile }
    end
  end
end
