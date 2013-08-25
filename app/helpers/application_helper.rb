module ApplicationHelper
  def days_as_developer
    start_date = Date.parse('2012-08-01')
    end_date = Date.today
    (end_date - start_date).to_i
  end

  def days_with_beard
    start_date = Date.parse('2012-09-09')
    end_date = Date.today
    if (end_date - start_date).to_i.to_s.split(//).count > 3
      "#{((end_date - start_date) / 1000).to_f.round(1)}k"
    else
      (end_date - start_date).to_i
    end
  end
end
