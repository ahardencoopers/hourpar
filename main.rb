require './include.rb'

horarios = File.open("test.txt", "r")
tablaHorarios = File.open("horariosProveedores.csv", "a+")

tablaHorarios.puts("fkEstetica dia horaAbre horaCierra")

horarios.each do |horario|
  salon = horario.split(",")[0]
  rangoHorario = horario.split(",")[1]
  rangoExtra = horario.split(",")[2..-1]
  diaInf = rangoHorario.split[0]
  diaSup = rangoHorario.split[1]
  diferenciaDias(diaInf, diaSup)
  puts diferenciaDias(diaInf, diaSup)
end

horarios.close
