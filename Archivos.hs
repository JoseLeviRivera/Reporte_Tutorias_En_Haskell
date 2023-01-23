module Archivos where 
import System.IO

leerArchivo file = do
    handle <- openFile file ReadMode
    contents <- hGetContents handle
    print(contents)
    hClose handle
    
-- [Profesor {identificador = "1", nombreProfesor = "Ariel", apellidosProfesor = "Lopez Gonzales", correoProfesor = "ariel@gmail.com", telefonoProfesor = "23566", anioIngresoProfesor = "2000", grado_Academico = "Maestria", adscripcionProfesor = "2002"},
escribirProfesoresArchivo id nombre apellidos correo telefonoCelular anioIngreso gradoAcademico adscripcion =  do 
    let str = "[Profesor{identificador="++id++", nombreProfesor="++nombre++", apellidosProfesor="++apellidos++", correoProfesor="++correo++", telefonoProfesor="++telefonoCelular++", anioIngresoProfesor="++anioIngreso++", grado_Academico="++gradoAcademico++", adscripcionProfesor="++adscripcion++"}],\n"
    appendFile "profesor.txt" str

--[Estudiante {identificadorEstudiante = "12", matriculaAlumno = "reert", nombreAlumno = "gfgf", apellidosAlumno = "dfgdf", correoAlumno = "gdf", telefonoDeCasaAlumno = "gdf", telefonoCelularAlumno = "fg", fechaNacimientoAlumno = "gdf", anioDeIngresoAlumno = "gdf", carreraAlumno = "dgf"}         
escribirEstudianteArchivo id matricula nombre apellidos correo telefonoDeCasa telefonoCelular fechaNacimiento anioIngreso carrera =  do 
    let str = "[Estudiante{identificadorEstudiante="++id++", matriculaAlumno="++matricula++", nombreAlumno="++nombre++", apellidosAlumno="++apellidos++", correoAlumno="++correo++", telefonoDeCasaAlumno="++telefonoDeCasa++", telefonoCelularAlumno="++telefonoCelular++", fechaNacimientoAlumno="++fechaNacimiento++", anioDeIngresoAlumno="++anioIngreso++", carreraAlumno="++carrera++"}], \n"
    appendFile "alumno.txt" str

--[Tutoria {fecha = "23/02/23", hora = "9:00AM", duracion = "30Min", comentarios = "Favorable, me ayudo"}]
escribirTutoriaArchivo  fechaReunion horaReunion duracionReunion comentarios = do 
    let str = "[Tutoria {fecha = "++fechaReunion++", hora="++horaReunion++", duracion="++duracionReunion++", comentarios="++comentarios++"}]\n"
    appendFile "tutorias.txt" str