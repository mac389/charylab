require 'digest'

module Jekyll
  module UUID
    def uuid(title, date)
      # Create a SHA1 hash based on title and date
      hash_input = "#{title}-#{date}"
      hash_output = Digest::SHA1.hexdigest(hash_input)

      # Convert the hash to a UUID-like format
      [hash_output[0..7], hash_output[8..11], hash_output[12..15], hash_output[16..19],
       hash_output[20..31]].join('-')
    end
  end
end

Liquid::Template.register_filter(Jekyll::UUID)
