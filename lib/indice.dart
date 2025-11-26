/* Calculadora de indice de masa corporal*/
import './utilidades.dart' as util;
import 'dart:math' as math;

void main () {
  //definir variables (imc = peso/altura^2)
  double peso = 0;
  double altura = 0;
  double imc = 0;

  util.encabezado('calculadora indice de masa corporal', 50);
  peso = util.leerNumeroDecimal('Ingresa tu peso');
  altura = util.leerNumeroDecimal('Ingresa tu altura');
  imc = calcularIMC(peso, altura);
  
  util.linea(50);
  var msj = 'El indice de masa corporal';
 //para mostrar solo dos decimales
  print('$msj ${imc.toStringAsFixed(2)} (${statusIMC(imc).toUpperCase()})');
  util.linea(50);
}
  double calcularIMC(double peso, double altura) {
    return peso / math.pow(altura, 2);
  }

String statusIMC(double imc) {
  if (imc < 18.5) {
    return 'bajo peso';
  } else if (imc >= 18.5 && imc < 24.99) {
    return 'peso normal';
  } else if (imc >= 24.99 && imc < 29.99) {
  return 'sobrepeso';
  } else {
    return 'obesidad';
  }

}