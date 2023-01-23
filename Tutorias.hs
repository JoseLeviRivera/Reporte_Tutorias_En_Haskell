module Tutorias where
import System.IO
import Archivos

data Tutoria = Tutoria {
    fecha::String,
    hora::String,
    duracion::String, 
    comentarios::String
} deriving (Read, Show)

leerTutoria:: IO [Tutoria]
leerTutoria = do
    putStrLn("Datos tutoria")
    putStrLn("Ingrese la fecha: ")
    fechaTutoria <- getLine
    putStrLn("Ingrese la hora: ")
    horaTutoria <- getLine
    putStrLn("Ingrese la duracion: ")
    duracionTutoria <- getLine
    putStrLn("Comentarios relevantes: ")
    comentariosTuto <- getLine
    putStrLn("")
    escribirTutoriaArchivo fechaTutoria horaTutoria duracionTutoria comentariosTuto
    let tuto = [Tutoria{
        fecha = fechaTutoria,
        hora = horaTutoria,
        duracion = duracionTutoria,
        comentarios = comentariosTuto
        }]
    return tuto

leerTutorias x
    | x > 0 = do
        unaTutoria <- leerTutoria
        multiplesTutorias <- leerTutorias(x-1)
        return (unaTutoria++multiplesTutorias) 
    | otherwise = return []

--Funcion que muestra el historial de las tutorias ingresada, lleva un registro
mostrarHistorialTutorias = leerArchivo "tutorias.txt"