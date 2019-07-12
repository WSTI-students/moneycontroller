module ApplicationHelper
  def format_date(datetime)
    datetime.strftime("%Y-%m-%d")
  end
end
