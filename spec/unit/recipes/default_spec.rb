require 'spec_helper'

describe_recipe 'chef-metal::default' do
  let(:chef_run) do
    ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04').converge(described_recipe)
  end

  it { expect(chef_run).to install_chef_gem('chef-metal') }
end
