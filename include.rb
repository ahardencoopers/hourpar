def diferenciaDias(diaInf, diaSup)
  diaInf = 1 if diaInf == "Lunes"
  diaInf = 2 if diaInf == "Martes"
  diaInf = 3 if diaInf == "Miercoles"
  diaInf = 4 if diaInf == "Jueves"
  diaInf = 5 if diaInf == "Viernes"
  diaInf = 6 if diaInf == "Sabado"
  diaInf = 7 if diaInf == "Domingo"

  diaSup = 1 if diaSup == "Lunes"
  diaSup = 2 if diaSup == "Martes"
  diaSup = 3 if diaSup == "Miercoles"
  diaSup = 4 if diaSup == "Jueves"
  diaSup = 5 if diaSup == "Viernes"
  diaSup = 6 if diaSup == "Sabado"
  diaSup = 7 if diaSup == "Domingo"

  puts diaInf 
  puts diaSup
end
