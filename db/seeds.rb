grades = ["Branca - 10º GUB", "Amarela - 8º GUB", "Ponteira Verde - 7º GUB", "Verde - 6º GUB", "Ponteira Azul - 5º GUB", "Azul - 4º GUB", "Ponteira Vermelha - 3º GUB", "Vermelha - 2º GUB", "Ponteira Preta - 1º GUB", "Preta - 1º DAN", "Preta - 2º DAN", "Preta - 3º DAN", "Preta - 4º DAN", "Preta - 5º DAN", "Preta - 6º DAN", "Preta - 7º DAN", "Preta - 8º DAN", "Preta - 9º DAN", "Preta - 10º DAN",]

grades.each do |grade|
  Grade.create(name: grade)
end
