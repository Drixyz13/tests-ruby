def translate(sentence)
  sentence.split.map do |word|
    if word.match(/\A[aeiou]/)
      word + "ay"
    elsif word.match(/\Asqu/)
      word[3..] + "squay"
    elsif word.match(/\Aqu/)
      word[2..] + "quay"
    elsif word.match(/\Asch/)
      word[3..] + "schay"
    elsif word.match(/\A[^aeiou]{3}/)
      word[3..] + word[0,3] + "ay"
    elsif word.match(/\A[^aeiou]{2}/)
      word[2..] + word[0,2] + "ay"
    else
      word[1..] + word[0] + "ay"
    end
  end.join(" ")
end