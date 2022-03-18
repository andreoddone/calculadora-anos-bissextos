def anoBissexto(ano)
  (ano % 4) == 0 and (ano % 100) != 0 or (ano % 400) == 0
end

puts 'Eu vou calcular todos os anos bissextos que existem em um intervalo entre dois anos que você escolher.'
puts 'Digite primeiro o ano em que começa esse intervalo:'
ano1 = gets.chomp.to_i
puts 'Agora digite o ano em que termina esse intervalo:'
ano2 = gets.chomp.to_i
while ano1 > ano2 and ano1 < 1
  puts 'O primeiro ano precisa ser menor do que o segundo e ambos os anos devem ser maiores que zero. Digite novamente.'
  puts 'Digite primeiro o ano em que começa esse intervalo:'
  ano1 = gets.chomp.to_i
  puts 'Agora digite o ano em que termina esse intervalo:'
  ano2 = gets.chomp.to_i
end

total_anos = total_anos
puts 'Essa é a lista de anos bissextos entre os anos ' + ano1.to_s + ' e ' + ano2.to_s + ':'
while ano1 <= ano2
  if anoBissexto(ano1)
    puts ano1
    total_anos = total_anos.to_i + 1
    ano1 = ano1 + 4
  else
    ano1 = ano1 + 1
  end
end
puts 'Total: ' + total_anos.to_s + ' anos.'
