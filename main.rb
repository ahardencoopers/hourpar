require './include.rb'

horarios = File.open("test.txt", "r")
tablaHorarios = File.open("horariosProveedores.csv", "a+")

tablaHorarios.puts("fkEstetica,dia,horaAbre,horaCierra")

horarios.each do |horario|
  salon = horario.split(",")[0]
  rangoHorario = horario.split(",")[1]
  rangoExtra = horario.split(",")[2..-1]

  diaInf = rangoHorario.split[0]
  diaSup = rangoHorario.split[1]
  horaAbre = rangoHorario.split[2]
  horaCierra = rangoHorario.split[3]
  diferenciaDias(diaInf, diaSup).times do |i|
    diaActual = nombreDia(i+1)
    tablaHorarios.puts("#{salon},#{diaActual},#{horaAbre},#{horaCierra}")
  end
  rangoExtra.length.times do |i|
    diaActual = rangoExtra[i].split[0]
    horaAbre = rangoExtra[i].split[1]
    horaCierra = rangoExtra[i].split[2]
    tablaHorarios.puts("#{salon},#{diaActual},#{horaAbre},#{horaCierra}")
  end
end

horarios.close
