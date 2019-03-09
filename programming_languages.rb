require 'pry'


def reformat_languages(languages)
  # your code here

  #Format the new hash with everything but the programming styles
  new_hash = {}
  languages.each do |style, style_data|
    style_data.each do |language, language_data|
      #Store all the info except programming styles in hash
      new_hash[language] = language_data
      #Add the new key/value to hold the programming styles
      new_hash[language][:style] = []
    end
  end
  #binding.pry

  #Add the programming styles to the hash
  languages.each do |style, style_data|
    style_data.each do |language, language_data|
      if style == :oo
        new_hash[language][:style] << :oo
      else
        new_hash[language][:style] << :functional

      end
    end
  end
  return new_hash
end
