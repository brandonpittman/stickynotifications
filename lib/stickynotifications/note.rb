require 'uri'

module StickyNotifications
  # Responsible for initiating note creation.
  class Note
    # @param text [String] text to be used as reminder
    # @return [Nil]
    # Calls Sticky Notifications URL scheme in order to
    #   initiate creation of sticky notification.
    def create(message_text, title_text)
      message = escape(message_text)
      title = escape(title_text)
      `open "sticky-notifications://note?title=#{title}&message=#{message}"`
    end

    # Escapes the Sticky Notification text for URLs. URI produces %20 for
    # spaces instead of CGI's +.
    # @param string_to_escape [String] the text to be escaped
    # @return [String] parsed URL
    def escape(string_to_escape)
      URI.escape(string_to_escape)
    end
  end
end
