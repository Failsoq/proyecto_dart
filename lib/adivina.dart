/* Juego de adivina el numero*/
import './utilidades.dart' as util;
import 'dart:math' as math;
void main() {
  //definir variables
  final random = math.Random();
  int secreto = random.nextInt(20) + 1;
  int numero = 0;
  String alias = '';

  util.encabezado('juego de adivina el numero', 50);
  alias = util.leerTexto('Ingresa tu alias', "alias");
  
  //print('El alias es $alias');
  util.linea(50);
  jugar(secreto, numero, alias);
}

void jugar(int secreto, int numero, String alias) {
  String msj = '';
  int intentos = 1;
  while (numero != secreto) {    //"!=" es desigualdad
    if (intentos == 4) {
      msj = 'Perdiste el numero secreto';
      util.linea(50);
      print('${alias.toUpperCase()} $msj $secreto');
      util.linea(50);
      break;                                    //que es break;?
    }  
    
    numero = util.leerNumeroEntero('Ingresa tu numero');
    intentos++;
    
    if (numero > secreto) {
    msj = 'Tu numero es mayor que el secreto';
    print('${alias.toUpperCase()}, $msj');
    } else if (numero < secreto) {
    msj = 'Tu numero es menor que el secreto';
    print('${alias.toUpperCase()}, $msj');
    } else { 
    msj = 'Felicitaciones ganaste...';
    util.linea(50);
    print('${alias.toUpperCase()}, $msj');
    util.linea(50);
    }
  }
}
