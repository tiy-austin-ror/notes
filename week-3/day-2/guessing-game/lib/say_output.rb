class SayOutput
  def print(msg)
    `say #{msg.gsub(/>/, "")}`
  end

  def puts(msg)
    `say #{msg.gsub(/>/, "")}`
  end
end
