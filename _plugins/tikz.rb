# require 'digest/md5'
#
# module Jekyll
#   module Tags
#     class Tikz < Liquid::Block
#       def initialize(tag_name, text, tokens)
#         super
#         @fname = fname.strip
#                       .gsub(/[^\w\s_-]+/, '')
#                       .gsub(/(^|\b\s)\s+($|\s?\b)/, '\\1\\2')
#                       .gsub(/\s+/, '_')
#       end
#
#       def render(context)
#         @latex = %(
# \\documentclass[varwidth]{standalone}
# \\usepackage{tikz}
# \\usepackage{amsmath,amssymb,latexsym}
# ... [latex/tikz packages] ...
# \\begin{document}
# #{super}
# \\end{document}
# )
#
#         dtikz = File.join(Dir.pwd, '_tikz') # dir of tex, pdf files
#         dsvg = File.join(Dir.pwd, 'assets', 'svg') # dir of public svg files
#         FileUtils.mkdir_p dtikz
#         FileUtils.mkdir_p dsvg
#
#         ftex = File.join(dtikz, "#{@fname}.tex")
#         File.open(ftex, 'w') { |file| file.write("#{@latex}") }
#
#         @md5 = Digest::MD5.hexdigest(@latex)
#         @imgsrc = File.join('/assets', 'svg', "#{@fname}-#{@md5}.svg")
#         "<img width='100%' src=\"#{@imgsrc}\" type=\"image/svg+xml\" />"
#       end
#     end
#   end
# end
#
# Liquid::Template.register_tag('tikz', Jekyll::Tikz)
# Authored my Maxfan http://github.com/Maxfan-zone http://maxfan.org
# # This is used to convert tikz code into svg file and load in you jekyll site
# #
# # Install:
# #
# #   1. Copy this file in your _plugins/ directory. You can customize it, of course.
# #   2. Make sure texlive and pdf2svg are installed on your computer.
# #   3. Set path to pdf2svg in _config.yml in "pdf2svg" variable
# #
# # Input:
#
#   {% tikz filename %}
#     \tikz code goes here
#   {% endtikz %}
#
# This will generate a /img/post-title-from-filename/filename.svg in your jekyll directory
#
# And then return this in your HTML output file:
#
#   <embed src="/img/post-title-from-filename/tikz-filename.svg" type="image/svg+xml" />
#
# Note that it will generate a /_tikz_tmp directory to save tmp files.
#

module Jekyll
  module Tags
    class Tikz < Liquid::Block
      def initialize(tag_name, markup, tokens)
        super
        @file_name = markup.gsub(/\s+/, '')

        @header = <<-'END'
        \documentclass{standalone}
        \usepackage{tikz}
        \begin{document}
        \begin{tikzpicture}
        END

        @footer = <<-'END'
        \end{tikzpicture}
        \end{document}
        END
      end

      def render(context)
        tikz_code = @header + super + @footer

        tmp_directory = File.join(Dir.pwd, '_tikz_tmp', File.basename(context['page']['url'], '.*'))
        tex_path = File.join(tmp_directory, "#{@file_name}.tex")
        pdf_path = File.join(tmp_directory, "#{@file_name}.pdf")
        FileUtils.mkdir_p tmp_directory

        dest_directory = File.join(Dir.pwd, 'svg', File.basename(context['page']['url'], '.*'))
        dest_path = File.join(dest_directory, "#{@file_name}.svg")
        FileUtils.mkdir_p dest_directory

        pdf2svg_path = context['site']['pdf2svg']

        # if the file doesn't exist or the tikz code is not the same with the file, then compile the file
        if !File.exist?(tex_path) or !tikz_same?(tex_path, tikz_code) or !File.exist?(dest_path)
          File.open(tex_path, 'w') { |file| file.write("#{tikz_code}") }
          system("pdflatex -output-directory #{tmp_directory} #{tex_path}")
          system("#{pdf2svg_path} #{pdf_path} #{dest_path}")
        end

        web_dest_path = File.join('/svg', File.basename(context['page']['url'], '.*'), "#{@file_name}.svg")
        "<embed src=\"#{web_dest_path}\" type=\"image/svg+xml\" />"
      end

      private

      def tikz_same?(file, code)
        File.open(file, 'r') do |file|
          file.read == code
        end
      end
    end
  end
end

Liquid::Template.register_tag('tikz', Jekyll::Tags::Tikz)
