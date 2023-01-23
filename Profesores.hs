module Profesores where
import System.IO
import Archivos

data Profesor = Profesor{
    identificador::String,
    nombreProfesor::String,
    apellidosProfesor::String, 
    correoProfesor::String, 
    telefonoProfesor::String,
    anioIngresoProfesor::String,
    grado_Academico::String,
    adscripcionProfesor::String
} deriving (Read,Show)

obtenerIdProfesor:: String -> [Profesor] -> Maybe Profesor
obtenerIdProfesor idProf profesores =  
    case filter (\(Profesor id _ _ _ _ _ _ _) -> id == idProf) profesores of 
        [(Profesor id nom apelli correoP telefonoP anioP gradoAc adcrp )] -> Just (Profesor id nom apelli correoP telefonoP anioP gradoAc adcrp )    
        _ -> Nothing 

cargarProfesores = [Profesor {identificador = "1", nombreProfesor = "Ariel", apellidosProfesor = "Lopez Gonzales", correoProfesor = "ariel@gmail.com", telefonoProfesor = "23566", anioIngresoProfesor = "2000", grado_Academico = "Maestria", adscripcionProfesor = "2002"},
                    Profesor {identificador = "2", nombreProfesor = "Nancy", apellidosProfesor = "Perez Perez", correoProfesor = "email.nancy@gmail.com", telefonoProfesor = "3554345", anioIngresoProfesor = "2010", grado_Academico = "Maestria", adscripcionProfesor = "2010"},
                    Profesor {identificador = "3", nombreProfesor = "Sandro", apellidosProfesor = "Lopez", correoProfesor = "email@gmail.com", telefonoProfesor = "223423423", anioIngresoProfesor = "2000", grado_Academico = "Maestria", adscripcionProfesor = "2020"},
                    Profesor {identificador = "4", nombreProfesor = "Domingo", apellidosProfesor = "M", correoProfesor = "email@gmail.com", telefonoProfesor = "223423423", anioIngresoProfesor = "2000", grado_Academico = "Maestria", adscripcionProfesor = "2020"},
                    Profesor {identificador = "5", nombreProfesor = "Calixto", apellidosProfesor = "N", correoProfesor = "email@gmail.com", telefonoProfesor = "223423423", anioIngresoProfesor = "2000", grado_Academico = "Maestria", adscripcionProfesor = "2020"},
                    Profesor {identificador = "6", nombreProfesor = "Fabian", apellidosProfesor = "L", correoProfesor = "email@gmail.com", telefonoProfesor = "223423423", anioIngresoProfesor = "2000", grado_Academico = "Maestria", adscripcionProfesor = "2020"}]

--Funcion que muestra los el historial de profesores
historialProfesores = leerArchivo "profesor.txt"

leerProfesor:: IO [Profesor]
leerProfesor = do
    putStrLn("<Registrar profesor/>")
    putStrLn("Ingrese su nombre: ")
    nombreProfesor <- getLine
    putStrLn("Ingrese sus apellidos: ")
    apellidosProfesor <- getLine
    putStrLn("Ingrese su correo: ")
    correoProfesor <- getLine
    putStrLn("Ingrese su telefono celular: ")
    telefonoProfesor <- getLine
    putStrLn("Ingrese su año de ingreso: ")
    anioIngresoProfesor <- getLine
    putStrLn("Ingrese Grado academico: ")
    gradoAcademicoProfesor <- getLine
    putStrLn("Ingrese su adscripcion: ")
    adscripcion <- getLine
    let idprf = generarIdProfesor nombreProfesor anioIngresoProfesor 0
    escribirProfesoresArchivo idprf nombreProfesor apellidosProfesor correoProfesor telefonoProfesor anioIngresoProfesor gradoAcademicoProfesor adscripcion
    let profs = [Profesor{
        identificador=idprf,
        nombreProfesor=nombreProfesor,
        apellidosProfesor=apellidosProfesor,
        correoProfesor=correoProfesor,
        telefonoProfesor=telefonoProfesor,
        anioIngresoProfesor=anioIngresoProfesor,
        grado_Academico=gradoAcademicoProfesor,
        adscripcionProfesor=adscripcion}]
    return profs

leerProfesores x
    | x > 0 = do
        unProfesor <- leerProfesor
        multiplesProfesores <- leerProfesores(x-1)
        return (unProfesor++multiplesProfesores) 
    | otherwise = return []

{-
    Se debe de generar una funcion que identifique a un Profesor, para generar su 
    identificador se debe de formar de la siguiente manera: Iniciales de su nombre
    el año de ingreso, mas un numero consecutivo
    Nombre: Jose Levi
    resultado: JL0...n
-}
initialesProfesor :: String -> String
initialesProfesor xs = [head x | x <- words xs]

counter :: Int -> Int 
counter n = n + 1

generarIdProfesor:: String -> String -> Int -> String
generarIdProfesor nombre anioIngreso numero = (initialesProfesor nombre)++ anioIngreso ++ show(counter numero) 



