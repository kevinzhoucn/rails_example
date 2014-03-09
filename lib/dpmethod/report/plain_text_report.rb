module Dpmethod::Report
  class PlainTextReport < ReportBase
    def output_start    
    end

    def output_head
      @result << '**** #{@title} ****'
    end

    def output_body_start
    end

    def output_line(line)
      @result << "#{line}"
    end

    def output_body_end
    end

    def output_end
    end
  end
end