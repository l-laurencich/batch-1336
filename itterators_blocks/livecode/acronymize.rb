def acronymize(sentence)
  sentence.split.map{ |el| el[0].upcase }.join
end

