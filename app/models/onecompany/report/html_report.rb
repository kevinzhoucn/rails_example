class Onecompany::Report::HTMLReport < Onecompany::Report::ReportBase
  def output_start
    @body <<'<html>'
  end

  def output_head
    @body <<'  <head>'
    @body <<"    <title>#{@title}</title>"
    @body <<'  </head>'
  end

  def output_body_start
    @body <<'<body>'
  end

  def output_line(line)
    @body << "  <p>#{line}</p>"
  end

  def output_body_end
    @body <<'</body>'
  end

  def output_end
    @body <<'</html>'
  end
end