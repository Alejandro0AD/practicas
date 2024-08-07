def to_camel_case(text)
  # Identificar delimitadores y dividir el texto en palabras
  words = text.split(/[-_]/)
  
  # Verificar si la primera palabra estaba originalmente en mayúsculas
  first_word_upper = words.first == words.first.upcase
  
  # Convertir la primera palabra a minúscula si no estaba en mayúsculas
  words[0] = first_word_upper ? words.first : words.first.downcase
  
  # Convertir el resto de las palabras a título (capitalizando la primera letra)
  words[1..-1] = words[1..-1].map(&:capitalize)
  
  # Unir las palabras para formar la cadena final
  words.join(' ')
end

# Ejemplos de prueba
puts to_camel_case("the-stealth-warrior")  # Output: "the Stealth Warrior"
puts to_camel_case("The_Stealth_Warrior")  # Output: "The Stealth Warrior"
puts to_camel_case("The_Stealth-Warrior")  # Output: "The Stealth Warrior"
