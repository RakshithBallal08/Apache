require 'spec_helper'

describe 'apache::service' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:params) { { 'service_name' => 'httpd' } }
      it { is_expected.to contain_service('httpd')
        .with(
        ensure: 'running',
        )
      }

      it { is_expected.to compile }
    end
  end
end
