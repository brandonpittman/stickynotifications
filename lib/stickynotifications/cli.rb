require 'thor'
require 'stickynotifications/note'

module StickyNotifications
  class Cli < Thor

    desc "new TEXT", "create new Sticky Notification with TEXT"
    # Creates a new Sticky Notification
    # @param text [String] the text of the Sticky Notification
    def new(text)
      note = StickyNotifications::Note.new
      note.create(text)
    end
  end
end
