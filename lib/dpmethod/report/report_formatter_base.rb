module Dpmethod::Report
  class ReportFormatterBase
      attr_reader :title, :text
      attr_accessor :formatter

      def initialize(&formatter)
        @title = 'Monthly Report'
        @text = [ 'Things are going', 'really, really well.' ]
        @formatter = formatter
      end

    def output_report
      #@formatter.output_report(self)
      @formatter.call(self)
    end
  end

  HTML_FORMATTER_BLOCK = lambda do |context|
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

  PLAIN_TEXT_FORMATTER = lambda do |context|
    result = "****** #{context.title} ******"
    context.text.each do |line|
      result << line
    end
    result
  end
end