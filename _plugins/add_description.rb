module Jekyll
  class DescriptionUpdater < Generator
    safe true
    priority :high

    def generate(site)
      # Iterate over documents in the 'podcasts' collection
      site.collections['podcasts'].docs.each do |doc|
        filename = File.basename(doc.path)

        # Only process Markdown files, excluding those with 'outline' in the filename
        next unless File.extname(doc.path) == '.md'
        next if filename.downcase.include?('outline')

        # Extract the YAML front matter as a hash
        yaml_data = doc.data # Jekyll already parses YAML front matter into a Hash

        # Extract Markdown body (Jekyll automatically separates it)
        markdown_body = doc.content

        # Extract the description section using a regular expression
        # Match all "####" headers (4th-level headers)
        headers = markdown_body.scan(/^####\s+(.+)/).flatten
        puts headers
        headers.pop if headers.last == 'References' # Remove the last header if it's 'References'

        # Convert headers into an HTML ordered list
        description_content = "<ol>\n" +
                              headers.map { |header| "  <li>#{header}</li>" }.join("\n") +
                              "\n</ol>"
        description = "<p>#{description_content}</p>" ? description_content : ''

        # Update the YAML front matter with the extracted description

        @arr = ["My Research Webpage: #{site.config['url']}",
                "Notes for this episode: #{site.config['url']}#{doc.url}.html",
                '<br><br>In Brief:',
                description]
        yaml_data['description'] = @arr.join('<br>')

        # No need to manually reconstruct the file because Jekyll handles it automatically
        puts "Updated description for #{filename}: #{yaml_data['description']}"
      end
    end
  end
end
