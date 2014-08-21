require "stickynotifications/version"
require 'uri'
require 'thor'

# @author "Brandon Pittman"
# All logic for StickyNotifications
class StickyNotifications < Thor

  desc "new TEXT", "create new Sticky Notification with TEXT"
  # Creates a new Sticky Notification
  # @param sticky_text [String] the text of the Sticky Notification
  def new(sticky_text)
    %x{open "sticky-notifications://note?message=#{escape_string(sticky_text)}"}
  end

  no_commands do
    # Escapes the Sticky Notification text for URLs. URI produces %20 for
    # spaces instead of CGI's +.
    # @param string_to_escape [String] the text to be escaped
    # @return [String] parsed URL
    def escape_string(string_to_escape)
      URI.escape(string_to_escape)
    end
  end
end
