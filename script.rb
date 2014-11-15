require 'fileutils'
("a".."z").each do |letter|
  FileUtils::mkdir_p("alphabetized/" + letter)
end

# The FileUtils module is required for creating nested directories.
# To do without nested directories:
#
# ("a".."z").each do |letter|
#   Dir.mkdir(letter)
# end

Dir.foreach("./original") do |file|
  if file[0] != "."
    first_letter = file[0]
    File.rename("./original/" + file, "./alphabetized" + "/" + first_letter + "/" + file)
  end
end
