require 'spec_helper'

describe Stickynotifications do
  it 'has a version number' do
    expect(Stickynotifications::VERSION).not_to be nil
  end

  # it 'creates a new Sticky Notification' do
  #   base = StickyNotifications.new
  #   expect(base.new('hi there')).to be_true
  # end

  it 'returns an escaped string' do
    base = StickyNotifications.new
    expect(base.escape_string('hi there')).to be_a String
  end
end
