=begin
Task description
A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.

For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps. The number 32 has binary representation 100000 and has no binary gaps.

Write a function:

def solution(n)

that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.

For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary representation '100000' and thus no binary gaps.

Write an efficient algorithm for the following assumptions:

N is an integer within the range [1..2,147,483,647].
=end

# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # Transforma o parâmetro n em um binário dentro de uma String
  bin = n.to_s(2)

  # Cria um array vazio para guardar os zeros temporários
  temp = []
  # Cria um array para guardar os gaps binários
  gaps = []

  # Itera na string contendo o binário
  bin.each_char do |char|
    # Verifica se o char é 1 ou 0
    if char == "1"
      # Se o array temp não estiver vazio, acrescenta a quantidade de elementos
      # de Temp em Gaps. Ex: Se dentro de Temp existirem 3 zeros, gaps recebe 3
      # Limpa o Array temp para receber outros possíveis gaps
      unless temp.empty?
        gaps << temp.length
        temp = []
      end
    else
      # Caso o Char seja 0, adiciona o char (0) dentro do array temp
      temp << char
    end
  end

  # Retorna 0 se o array gaps estiver vazio
  return 0 if gaps.empty?
  # Retorna o maior número dentro do array Gaps, que consiste na maior
  # recorrência de zeros dentro do array, ou seja, o maior gaps de 0
  gaps.max
end

p solution(1041)
