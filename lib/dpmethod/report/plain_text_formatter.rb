module Dpmethod::Report
  class PlainTextFormatter
    def output_report(context)
      result = "****** #{context.title} ******"
      context.text.each do |line|
        result << line
      end
      result
    end
  end
end