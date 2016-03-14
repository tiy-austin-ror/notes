module GameLibrary
  module Utils
    SCREEN_WIDTH = 25
    def Utils.center_message(msg, length)
      if length > SCREEN_WIDTH
        pad_length = (SCREEN_WIDTH / 2) - (msg / 2)
      else
        pad_length = (length / 2) - (msg / 2)
      end
      print "-" * pad_length
      print msg
      puts "-" * pad_length
    end
  end
end
