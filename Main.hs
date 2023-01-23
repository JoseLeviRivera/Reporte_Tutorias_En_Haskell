import System.IO
import Archivos
import Estudiantes
import Profesores 
import Tutorias

menu = do
    putStrLn "Selecciona una opción:"
    putStrLn "1. Registrar Profesor"
    putStrLn "2. Registrar Alumno"
    putStrLn "3. Registrar Tutorias"
    putStrLn "4. Salir"
    opcion <- getLine
    case opcion of
        "1" -> do
            putStrLn("Cuantos usuarios desea registrar!?")
            numerosProf <- readLn :: IO Int
            leerProfesores numerosProf
            putStrLn("Desea ver un usuario especifico? [Y/N]")
            especifico <- getLine
            case especifico of
                "Y" -> do
                    putStrLn("Ingrese el Id: ")
                    --idProfSpe <- getLine
                    --obtenerIdProfesor idProfSpe 
                "N" -> do
                    putStrLn("Escogio No")
            menu
        "2" -> do
            putStrLn("Cuantos Alumnos desea registrar!?")
            numAlumn <- readLn :: IO Int
            leerEstudiantes numAlumn
            menu
        "3" -> do
            putStrLn("Cuantos Tutorias desea registrar!?")
            numTuto <- readLn :: IO Int
            leerTutorias numTuto
            menu
        "4" -> putStrLn "Saliendo del sistema..."
        _   -> do
            putStrLn "Opción inválida"
            menu 

main::IO()
main = do
    putStrLn("##Bienvenido##")
    menu
   

