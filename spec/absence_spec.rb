require 'spec_helper'

describe Absence do
  it 'has a version number' do
    expect(Absence::VERSION).not_to be nil
  end

  ## it 'does something useful' do
  ##   expect(false).to eq(true)
  ## end

  it 'authenticates with your API Key' do
    expect(Absence::Authenticate).to eq(false)
  end
end
