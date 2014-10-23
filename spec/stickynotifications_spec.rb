require 'spec_helper'

describe Stickynotifications do
  it 'has a version number' do
    expect(Stickynotifications::VERSION).not_to be nil
  end

  it 'returns an escaped string' do
    base = StickyNotifications::Note.new('Hell, world!')
    expect(base.escape_string).to be_a String
  end
end
