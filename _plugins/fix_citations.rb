module Jekyll
  module FixCitations
    def fix_commas(text)
      text.gsub(/,([^ ])/m, ', \1') # Ensure a space after commas
    end
  end
end

Liquid::Template.register_filter(Jekyll::FixCitations)
