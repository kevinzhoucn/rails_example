module Dpmethod::Report
  class HTMLReport < ReportBase
    def output_start
      @result <<'<html>'
    end

    def output_head
      @result <<'  <head>'
      @result <<"    <title>#{@title}</title>"
      @result <<'  </head>'
    end

    def output_body_start
      @result <<'<body>'
    end

    def output_line(line)
      @result << "  <p>#{line}</p>"
    end

    def output_body_end
      @result <<'</body>'
    end

    def output_end
      @result <<'</html>'
    end
  end
end