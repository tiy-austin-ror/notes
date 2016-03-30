class WordWrap
  def wrap(str, max_columns)
    if max_columns > 0 && max_columns < str.length

      str_pieces = str.chars.map.with_index do |char, index|
        if (index + 1) % max_columns == 0
          "#{char}\n"
        else
          char
        end
      end

      str_pieces.join.chomp
    else
      str
    end
  end
end
