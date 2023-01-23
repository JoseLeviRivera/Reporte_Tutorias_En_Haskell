## Reporte Tutorias
### ¿De qué se trata?
El Comité Institucional de Tutorías (CIT) de la Universidad del Papaloapan requiere un sistema para
gestionar información respecto al seguimiento tutorial de los alumnos de todas las carreras del
campus Loma Bonita.
De cada estudiante se desea ingresar información como, matrícula, nombre(s), apellidos, correo,
teléfono de casa o teléfono celular, fecha nacimiento, año de ingreso a la universidad, carrera.
Además de los datos personales, es importante ir generando un historial de seguimiento en el avance
académico, problemas académicos y reuniones para tutorías. Cada estudiante será identificado con una
clave que es formada por su matrícula, más los dos últimos dígitos del año de ingreso.
Un(a) profesor(a) puede ser tutor(a) de mínimo 1 estudiante y máximo 10. La información que se
requiere gestionar del profesor es: grado académico, nombre, apellidos, adscripción (carrera),
correo, teléfono celular, año de ingreso. Un profesor será identificado por las iniciales de su
nombre más, el año de ingreso a laborar, más un número consecutivo.
Durante el periodo semestral, cada tutor debe tener por lo menos una tutoría con cada estudiante que
tiene asignado. De cada reunión tutorial (presencial o virtual) se debe guardar evidencia de la
siguiente información: fecha y hora de la reunión, duración de la reunión, comentarios relevantes de
cada estudiante acerca de su avance y/o problemas académicos.
Por lo tanto, cada profesor que tenga el rol de tutor contará con una contraseña que será generada
automáticamente. La contraseña será generada de forma aleatoria, de acuerdo a los siguiente.
Longitud mínimo 8 caracteres, se deben incluir letras minúsculas, letras mayúsculas, número no
consecutivos y símbolos especiales.
Ya que es importante llevar el seguimiento del progreso académico del estudiantes, es importante que
se tenga registro de las materias y calificaciones que va obteniendo cada estudiantes.

De los cuales se codifican las siguientes funciones:

- Funcion que generen el identificador para estudiantes y profesores cubriendo los requerimientos
descritos en el texto.

- Funcion que genera el tipo de dato llamado persona que distinga entre usuario estudiante y usuario académico. Dependiendo el tipo deberá contener los datos personales correspondientes a su tipo.

- Una función que solicite desde teclado los datos de n cantidad de usuarios, ya sea estudiantes o académicos. Por cada usuario se tendrá que ir almacenando en listas diferentes que
serán mostradas en pantalla. En relación a la contraseña, deberá generar una función que genere la
contraseña de forma automática, de acuerdo a los requerimientos descritos.

- La función que permita mostrar los datos de un usuario de acuerdo a su identificador, ya
sea estudiante o académico.

### ¿Cómo ejecutar?
Para ejecutar el proyecto se debe de ejecutar de la siguiente manera:

Posicionarse en la terminal y escribir:

**Example:**
```sh
$ ghci
$ :load Main.hs
$ menu
```
### Imagen de ejemplo
![Aquí la descripción de la imagen por si no carga](https://github.com/JoseLeviRivera/Reporte_Tutorias_En_Haskell/blob/main/tutorias.png)
