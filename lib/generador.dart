/*Generador de tablas de multiplicar*/
import './utilidades.dart' as util;

void main() {
  //definir variables
  int numero = 0;
  int nroInicio = 0;
  int nroFinal = 0;

  util.encabezado('generador de tablas de multiplicar', 50);
  numero = util.leerNumeroEntero('Ingresa tu numero');

  util.encabezado('tabla de multiplicar del $numero', 50);
  generarTabla(numero);  

  util.encabezado('Generar rango de tablas', 50);
  nroInicio = util.leerNumeroEntero('Ingresa el numero de inicio');
  nroFinal = util.leerNumeroEntero('Ingresa el numero final');

  util.encabezado('tablas de multiplicar del $nroInicio al $nroFinal', 50);

  generarRangoTablas(nroInicio, nroFinal);
}

void generarRangoTablas(int nroInicio, int nroFinal) { // para generar las tablas de multiplicar
  for (var i = nroInicio; i <= nroFinal; i++) {        // dentro de un rango//
    for (var j = 1; j <= 10; j++) {
      print('$i x $j = ${producto(nroInicio, j)}');
    }
    util.linea(50);
  }
}

void generarTabla(int numero) {
  for (var i = 1; i <= 10; i++) {
    print('$numero x $i = ${producto(numero, i)}');
  }
}

var producto = (a, b) => a * b; // '=>' esta es una funcion flecha