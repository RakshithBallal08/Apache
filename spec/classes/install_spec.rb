require 'spec_helper'

describe 'apache::install' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:params) { { 'package_name' => 'httpd' } }
      it { is_expected.to contain_package('httpd')
        .with(
        ensure: 'installed',
        )
      }

      it { is_expected.to compile }
    end
  end
end
