horarios = File.open("test.txt", "r")

horarios.each do |horario|
  salon = horario.split(",")[0]
  rangoHorario = horario.split(",")[1]
  rangoExtra = horario.split(",")[2..-1]
end

horarios.close
