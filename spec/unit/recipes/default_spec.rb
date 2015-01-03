require 'spec_helper'

describe_recipe 'chef-provisioning::default' do
  it { expect(chef_run).to include_recipe('build-essential::default') }
  it { expect(chef_run).to install_chef_gem('chef-provisioning') }
end
