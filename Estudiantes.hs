module Estudiantes where 
import System.IO
import Archivos

data Estudiante = Estudiante{
    identificadorEstudiante::String,
    matriculaAlumno::String,
    nombreAlumno::String,
    apellidosAlumno::String,
    correoAlumno::String,
    telefonoDeCasaAlumno::String,
    telefonoCelularAlumno::String,
    fechaNacimientoAlumno::String,
    anioDeIngresoAlumno::String,
    carreraAlumno::String
} deriving (Read,Show)

leerEstudiante:: IO [Estudiante]
leerEstudiante = do
    putStrLn("<Datos del Alumno/>")
    putStrLn("Ingrese la matricula: ")
    matriculaAlm <- getLine
    putStrLn("Ingrese su nombre: ")
    nombreAlumno <- getLine
    putStrLn("Ingrese sus apellidos: ")
    apellidosAlumno <- getLine
    putStrLn("Ingrese su correo electronico: ")
    correoAlumno <- getLine
    putStrLn("Ingrese su telefono de casa: ")
    telefonoCasaAlumno <- getLine
    putStrLn("Ingrese su telefono celular: ")
    telefonoCelularAlumno <- getLine
    putStrLn("Ingrese su año de nacimiento: ")
    fechaNacimientoAlumno <- getLine
    putStrLn("Ingrese Año de ingreso: ")
    anioIngresoAlumno <- getLine
    putStrLn("Ingrese su carrera: ")
    carreraAlumno <- getLine
    let ident = generateIdEstudiante matriculaAlm anioIngresoAlumno
    putStrLn("")
    escribirEstudianteArchivo ident matriculaAlm nombreAlumno apellidosAlumno correoAlumno telefonoCasaAlumno telefonoCelularAlumno fechaNacimientoAlumno anioIngresoAlumno carreraAlumno
    let alum = [Estudiante{
        identificadorEstudiante = ident,
        matriculaAlumno = matriculaAlm,
        nombreAlumno = nombreAlumno,
        apellidosAlumno = apellidosAlumno,
        correoAlumno = correoAlumno,
        telefonoDeCasaAlumno = telefonoCasaAlumno,
        telefonoCelularAlumno = telefonoCelularAlumno,
        fechaNacimientoAlumno = fechaNacimientoAlumno,
        anioDeIngresoAlumno = anioIngresoAlumno,
        carreraAlumno = carreraAlumno
        }]
    return alum

leerEstudiantes x
    | x > 0 = do
        unEstudiante <- leerEstudiante
        multiplesEstudiantes <- leerEstudiantes(x-1)
        return (unEstudiante++multiplesEstudiantes) 
    | otherwise = return []

obtenerIdEstudiante:: String -> [Estudiante] -> Maybe Estudiante
obtenerIdEstudiante idEst estudiantes =  
    case filter (\(Estudiante id _ _ _ _ _ _ _ _ _) -> id == idEst) estudiantes of 
        [(Estudiante id matricula nombre apellidos correo telefonoDeCasa telefonoCelular fechaNacimiento anioIngreso carrera )] -> Just (Estudiante id matricula nombre apellidos correo telefonoDeCasa telefonoCelular fechaNacimiento anioIngreso carrera)    
        _ -> Nothing 

--Funcion que carga el historia de los Estudiantes ingresados
historialEstudiantes = leerArchivo "alumno.txt"

cargarEstudiantes = [Estudiante {identificadorEstudiante = "1", matriculaAlumno = "190002", nombreAlumno = "Jose Levi", apellidosAlumno = "Rivera", correoAlumno = "joselev@gmail.com", telefonoDeCasaAlumno = "788777", telefonoCelularAlumno = "898998", fechaNacimientoAlumno = "89988", anioDeIngresoAlumno = "2000", carreraAlumno = "IC"},
                    Estudiante {identificadorEstudiante = "2", matriculaAlumno = "6456", nombreAlumno = "Luis", apellidosAlumno = "Mendoza", correoAlumno = "esas", telefonoDeCasaAlumno = "235235", telefonoCelularAlumno = "2423423", fechaNacimientoAlumno = "3 de enero", anioDeIngresoAlumno = "3234", carreraAlumno = "IC"},
                    Estudiante {identificadorEstudiante = "3", matriculaAlumno = "190002", nombreAlumno = "Jose", apellidosAlumno = "Rivera", correoAlumno = "hose@gmail.com", telefonoDeCasaAlumno = "788777", telefonoCelularAlumno = "898998", fechaNacimientoAlumno = "89988", anioDeIngresoAlumno = "2000", carreraAlumno = "IC"},
                    Estudiante {identificadorEstudiante = "4", matriculaAlumno = "190002", nombreAlumno = "Jose Luis", apellidosAlumno = "Mendez", correoAlumno = "joseluis@gmail.com", telefonoDeCasaAlumno = "788777", telefonoCelularAlumno = "898998", fechaNacimientoAlumno = "89988", anioDeIngresoAlumno = "2000", carreraAlumno = "IC"},
                    Estudiante {identificadorEstudiante = "5", matriculaAlumno = "190002", nombreAlumno = "Carlos", apellidosAlumno = "Garcias", correoAlumno = "carlos@gmail.com", telefonoDeCasaAlumno = "788777", telefonoCelularAlumno = "898998", fechaNacimientoAlumno = "89988", anioDeIngresoAlumno = "2000", carreraAlumno = "IC"},
                    Estudiante {identificadorEstudiante = "6", matriculaAlumno = "190002", nombreAlumno = "Luis", apellidosAlumno = "Gonzales", correoAlumno = "luis@gmail.com", telefonoDeCasaAlumno = "788777", telefonoCelularAlumno = "898998", fechaNacimientoAlumno = "89988", anioDeIngresoAlumno = "2000", carreraAlumno = "IC"},
                    Estudiante {identificadorEstudiante = "7", matriculaAlumno = "190002", nombreAlumno = "Eliud", apellidosAlumno = "Juarez", correoAlumno = "eliud@gmail.com", telefonoDeCasaAlumno = "788777", telefonoCelularAlumno = "898998", fechaNacimientoAlumno = "89988", anioDeIngresoAlumno = "2000", carreraAlumno = "IC"},
                    Estudiante {identificadorEstudiante = "8", matriculaAlumno = "190002", nombreAlumno = "Elisama", apellidosAlumno = "Juarez", correoAlumno = "elisama@gmail.com", telefonoDeCasaAlumno = "788777", telefonoCelularAlumno = "898998", fechaNacimientoAlumno = "89988", anioDeIngresoAlumno = "2000", carreraAlumno = "IC"}
                    ]
    
{-
    Se debe de generar una funcion que identifique al alumno, para 
    generar su identificador se debe de formar por: clave de la matricula, concatenado 
    con los dos numeros de ingreso del alumno
    matricula: 19010057
    ingreso: 2019
    resultado: 1901005719
-} 

lastTwoChars :: String -> String
lastTwoChars xs = drop (length xs - 2) xs

generateIdEstudiante:: String -> String -> String
generateIdEstudiante matricula ingresoAnio = matricula ++(lastTwoChars ingresoAnio)