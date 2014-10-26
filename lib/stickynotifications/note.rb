require 'uri'

module StickyNotifications
  class Note
    # @param text [String] text to be used as reminder
    # @return [Nil]
    # Calls Sticky Notifications URL scheme in order to initiate creation of sticky notification.
    def create(text)
      %x{open "sticky-notifications://note?message=#{escape_string(text)}"}
    end

    # Escapes the Sticky Notification text for URLs. URI produces %20 for
    # spaces instead of CGI's +.
    # @param string_to_escape [String] the text to be escaped
    # @return [String] parsed URL
    def escape_string(string_to_escape)
      URI.escape(string_to_escape)
    end
  end
end
