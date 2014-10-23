require 'thor'

module StickyNotifications
  class Cli < Thor

    desc "new TEXT", "create new Sticky Notification with TEXT"
    # Creates a new Sticky Notification
    # @param sticky_text [String] the text of the Sticky Notification
    def new(text)
      StickyNotifications::Note.new(text)
    end
  end
end
