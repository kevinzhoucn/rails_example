class Dpmethod::FrontController < DpmethodController
  include Dpmethod::Report
  include Dpmethod::Composite

  def index
    html_report = Dpmethod::Report::HTMLReport.new
    plain_report = Dpmethod::Report::PlainTextReport.new
    @report = html_report.output_report
    @plain_report = plain_report.output_report
#    html_formatter_report = Onecompany::Report::ReportFormatterBase.new(Onecompany::Report::HTMLFormatter.new)
#    @html_formatter = html_formatter_report.output_report
#    plain_formatter_report = Onecompany::Report::ReportFormatterBase.new(Onecompany::Report::PlainTextFormatter.new)
#    @plain_formatter_report = plain_formatter_report.output_report

    html_formatter_report = Dpmethod::Report::ReportFormatterBase.new &HTML_FORMATTER_BLOCK
    @html_formatter_report = html_formatter_report.output_report
    plain_formatter_report = Dpmethod::Report::ReportFormatterBase.new &PLAIN_TEXT_FORMATTER
    @plain_formatter_report = plain_formatter_report.output_report
  end

  def observer
    fred = Dpmethod::Observer::Employee.new("Fred", "Crane Operator", 3000)
    tax_man = Dpmethod::Observer::TaxMan.new
    super_man = Dpmethod::Observer::SuperMan.new
    fred.add_observer(tax_man)
    fred.add_observer(super_man)
    fred.salary = 10000
    @message = []
    @message << tax_man.message
    @message << super_man.message
  end

  def composite    
    @message = []
    composite_task = Dpmethod::Composite::MakeBatterTask.new
    @message << composite_task.get_time_required

    @sub_category = SubCategory.new
  end
end
