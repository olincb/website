
# puts "Rendering projects markdown files to html."
# timestart = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# markdown_files = Dir[Rails.root.join("app/assets/documents/projects/*")]
# markdown_files.each do |md_file|
#     basename = File.basename md_file, ".*"
#     html_file = Rails.root.join("app/views/markdown/projects/_#{basename}.html.erb")
#     html_content = MarkdownRenderer.render(File.read(md_file))
#     File.write(html_file,html_content)
# end
# puts "Done rendering projects markdown files to html. (time: #{(Process.clock_gettime(Process::CLOCK_MONOTONIC) - timestart)*1000} ms)"