/* Funciones de utilidad */
import 'dart:io';

String centrar(String texto, int largo) {
  int relleno = (largo - texto.length) ~/ 2;
  String textoCentrado = ' ' * relleno + texto;
  return textoCentrado;
}

void linea(int largo) {
  print('═' * largo);
}

void encabezado(String titulo, int largo) {
  linea(largo);
  print(centrar(titulo.toUpperCase(), largo));
  linea(largo);
}

int leerNumeroEntero(String msj) {
  int numero = 0;
  while (true) {
    try {
      stdout.write('$msj: ');
      numero = int.parse(stdin.readLineSync().toString());
      return numero;
      
    } catch (e) {
      print('Debe escribir un numero entero');
    }
  }
}

double leerNumeroDecimal(String msj) {
  double numero = 0;
  while (true) {
    try {
      stdout.write('$msj: ');
      numero = double.parse(stdin.readLineSync().toString());
      return numero;
      
    } catch (e) {
      print('Debe escribir un numero...');
    }
  }
} 

String leerTexto(String msj, String aviso) {
  String texto = ''; //hay que colocar texto vacio para que no de error de 'null'
  while (true) {
    stdout.write('$msj: ');
    texto = stdin.readLineSync().toString();
    if (texto.trim().isNotEmpty) { //Que es .trim()d?
      return texto.trim();     //alt + flecha arriba para subir linea de codigo
    } else {
      print('Debe escribir $aviso...');
    }
    
  }
}