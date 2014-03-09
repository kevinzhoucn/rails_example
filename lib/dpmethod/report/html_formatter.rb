module Dpmethod::Report
  class HTMLFormatter
    def output_report( context )
      result = '<html>' \
                  '<head>' \
                    "<title>#{context.title}</title>" \
                  '</head>' \
                  '<body>'
      context.text.each do |line|
        result << "<p>#{line}</p>"
      end
      result << '</body>' \
              '</html>'
    end
  end
end