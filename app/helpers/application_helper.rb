module ApplicationHelper
  def category_name( vendor )
    case vendor
    when 1
      return 'Bridal'
    when 2
      return 'Decorations'
    when 3
      return 'Photography'
    when 4
      return 'Venues'
    when 5
      return 'Entertainment'
    when 6
      return 'Catering'
    else
      return ''
    end
  end
end
