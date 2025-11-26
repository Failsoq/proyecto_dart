/* primer programa en dart para sumar dos numeros enteros */

import '../utilidades.dart';
void main() {

// Definir Variables

  int numero1 = 9;
  int numero2 = 8;
  int numero3 = 0;
  int numero4 = 0;
  
  int suma = 0;

  encabezado('sumar numeros', 36);

  numero1 = leerNumeroEntero('Ingresa primer numero');
  numero2 = leerNumeroEntero('Ingresa segundo numero');
  numero3 = leerNumeroEntero('Ingresa tercer numero');
  numero4 = leerNumeroEntero('Ingresa cuarto numero');

  suma = calcularSuma([numero1, numero2, numero3, numero4]);   

  linea(36);
  //print('La suma de $numero1 + $numero2 es $suma');
  print('La suma de los numeros $numero1 + $numero2 + $numero3 + $numero4 es $suma');
  linea(36);
}

int calcularSuma(List<int> numeros) {
  return numeros.reduce((total, numero) => total + numero);
}


