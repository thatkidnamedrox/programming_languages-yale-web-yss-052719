def reformat_languages(languages)
  # your code here
  styles = languages.keys
  new_hash = {}
  styles.each do |style|

    languages[style].each do |lang, lang_info|
      new_hash[lang] = lang_info
      new_hash[lang][:style] += [style]
    end
  end
  puts new_hash.inspect
end
