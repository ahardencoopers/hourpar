horarios = File.open("test.txt", "r")
tablaHorarios = File.open("horariosProveedores.csv", "a+")

tablaHorarios.puts("fkEstetica dia horaAbre horaCierra")

horarios.each do |horario|
  salon = horario.split(",")[0]
  rangoHorario = horario.split(",")[1]
  rangoExtra = horario.split(",")[2..-1]
end

horarios.close
