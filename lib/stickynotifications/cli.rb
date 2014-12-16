require 'thor'
require 'stickynotifications/note'

# @author "Brandon Pittman"
module StickyNotifications
  # @author "Brandon Pittman"
  # Inherits from Thor in order to create CLI
  class Cli < Thor
    desc 'new TEXT [-t TITLE]',
         'create new Sticky Notification with TEXT [and TITLE]'
    # Creates a new Sticky Notification
    # @param text [String] the message of the Sticky Notification
    # @option title [String] optional title for Sticky Notification
    # @example stickynotifications new
    #   stickynotifications new "This is the text of my sticky notification!"
    option :title,
           aliases: :t,
           type: :string,
           default: 'Reminder',
           banner: 'Optional title for new Sticky Notification.'
    def new(text)
      note = StickyNotifications::Note.new
      note.create(text, options[:title])
    end
  end
end
