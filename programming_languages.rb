def reformat_languages(languages)
  # your code here
  styles = languages.keys
  new_hash = {}
  styles.each do |style|

    languages[style].each do |lang, lang_info|
      if new_hash[lang] == nil
        new_hash[lang] = lang_info
      end
      if new_hash[lang][:style] == nil
        new_hash[lang][:style] = []
      end
      new_hash[lang][:style] << style
    end
  end
  new_hash
end
