require 'rails_helper'

RSpec.describe 'project config test' do
  # TODO: remove file once request specs in place
  let(:hello) { 'world' }

  it 'can run a test test' do
    expect(hello).to eq 'world'
  end
end
