require 'spec_helper'

describe_recipe 'chef-metal::default' do
  subject { ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04') }

  context 'with default attributes' do
    it do
      expect(subject.converge(described_recipe)).to install_chef_gem('chef-metal')
    end
  end
end
