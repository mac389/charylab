require 'date'

module FutureDateFilter
  def future_dates(input)
    current_date = Date.today
    filtered_entries = []
    input.each do |entry|
      entry_date = Date.strptime(entry['date'], '%B %d, %Y')
      filtered_entries << entry if entry_date > current_date
    end
    filtered_entries
  end
end

Liquid::Template.register_filter(FutureDateFilter)
