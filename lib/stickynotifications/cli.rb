require 'thor'
require 'stickynotifications/note'

# @author "Brandon Pittman"
module StickyNotifications
  # @author "Brandon Pittman"
  # Inherits from Thor in order to create CLI
  class Cli < Thor
    desc "new TEXT", "create new Sticky Notification with TEXT"
    # Creates a new Sticky Notification
    # @param text [String] the text of the Sticky Notification
    # @example stickynotifications new
    #   stickynotifications new "This is the text of my sticky notification!"
    def new(text)
      note = StickyNotifications::Note.new
      note.create(text)
    end
  end
end
