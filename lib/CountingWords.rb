# frozen_string_literal: true

require_relative "CountingWords/version"

module CountingWords
  class Error < StandardError; end
  # Reference and read the file
  path = File.join(__dir__, 'resources/speech.txt');
  file = File.open(path)
  wordHash = {}
  fileData = file.read
  fileData = fileData.downcase
  wordArray = fileData.split(' ')
  wordArray.each { |word| 
   if wordHash[word]
    wordHash[word] = wordHash[word] + 1
   elsif 
    wordHash[word] = 1
   end
  }
  file.close
  puts wordHash
end
