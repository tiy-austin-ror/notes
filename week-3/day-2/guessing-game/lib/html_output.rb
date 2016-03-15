class HTMLOutput
  def initialize
    @file = File.new('output.html', 'w+')
    @file.write("""
      <html>
        <head>
          <body>
    """)
  end

  def print(msg)
    @file.write "<span>#{msg}</span>"
  end

  def puts(msg)
    @file.write "<div>#{msg}</div>"
  end
end
