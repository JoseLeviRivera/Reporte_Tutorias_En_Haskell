module Tutores where 
import Estudiantes

data Tutor = Tutor {
    identificadorDocente::String,
    contrasenia::String,
    alumnos::[Estudiante]
} deriving(Show, Read)

leerTutor::[Estudiante] -> IO [Tutor]
leerTutor listaAlumnos = do
    putStrLn("Ingrese el identificador del profesor: ")
    identificadorDoc <- getLine
    -- let password = generateRandomPlate 
    let tutor = [Tutor{identificadorDocente=identificadorDoc,
                    contrasenia="secret",
                    alumnos=listaAlumnos
                }]
    return tutor

