
def substrings (string, dictionary )
  return_hash = Hash.new
  dictionary.each { |word|
    word_count = string.scan(/(?=#{word})/).count
    if word_count > 0
      return_hash[word] = word_count
    end
  }
  return_hash
end
