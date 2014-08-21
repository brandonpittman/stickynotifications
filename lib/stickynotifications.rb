require "stickynotifications/version"
require 'uri'
require 'thor'

class StickyNotifications < Thor
  desc "new TEXT", "create new Sticky Notification with TEXT"
  def new(sticky_text)
    %x{open "sticky-notifications://note?message=#{escape_string(sticky_text)}"}
  end

  no_commands do
    def escape_string(string_to_escape)
      URI.escape(string_to_escape)
    end
  end
end
