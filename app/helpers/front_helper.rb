module FrontHelper
  def build_link(province, category, sub_category)
    link = ""
    if not province.nil?
      link = '/' + province.abbr
    end

    if not category.nil?
      link = link + '/jzc' + category.id.to_s
    else
      link = link + '/jzc0'
    end

    if not sub_category.nil?
      link = link + 's' + sub_category.id.to_s
    else
      link = link + 's0'
    end

    link = link + 'p0.html'
  end
end
