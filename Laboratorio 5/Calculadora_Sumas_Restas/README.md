# Calculadora de sumas y restas — Java + Prolog

Proyecto adaptado de la calculadora de derivadas e integrales del Laboratorio 5.

## Abrir en IntelliJ IDEA
File > Open > selecciona la carpeta `Calculadora_Sumas_Restas`
Ejecuta `src/main/java/org/example/Main.java` con el botón Run.
Escribe `8,3` y presiona Sumar (resultado 11.0) o Restar (resultado 5.0).

## Funcionamiento
- `Window.java`: interfaz gráfica Java Swing; recibe dos números separados por coma.
- `Connection.java`: carga `operaciones.pl`, crea una consulta `suma(A,B,R)` o `resta(A,B,R)` y devuelve R.
- `operaciones.pl`: define reglas Prolog y usa `is` para efectuar la operación.

Ejemplos: `10,4`, `-5,2`, `2.5,1.5`. El separador decimal es punto; la coma separa los dos números.
