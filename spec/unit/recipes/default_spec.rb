require 'spec_helper'

describe_recipe 'chef-provisioning::default' do
  subject { ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04') }

  context 'with default attributes' do
    it do
      expect(subject.converge(described_recipe)).to install_chef_gem('chef-provisioning')
    end
  end
end
