def parse_alunos(file)
  File.read(file)
      .scan(/(\d{2}\/\d{7})\s+([A-ZÀ-Ú\s ']+)/)
      .map { |mat, nome| [mat, nome.gsub(/\s+/, ' ').strip] }
end

def imprimir_ordenado(alunos)
  ordenados = alunos.sort_by { |mat, nome| yield(mat, nome) }
  ordenados.each { |mat, nome| puts "#{mat}\t#{nome}" }
end

alunos = parse_alunos('/home/menezes/Área de trabalho/engenharia_software/exercicios_es/parsing_list2/engsoft.txt')

puts
puts "=== ordenado por matrícula ==="
puts
imprimir_ordenado(alunos) { |mat, nome| mat }

puts

puts "=== ordenado por nome ==="
puts
imprimir_ordenado(alunos) { |mat, nome| nome }