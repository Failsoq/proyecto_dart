/* Datos de un empleado*/
import 'package:dart/utilidades.dart%20';

import 'utilidades.dart' as util;

void main() {
  //Definir un mapa de empleados
  Map<String, dynamic> empleado = {
    'cedula': '24.142.753',
    'nombre': 'yenifer',
    'apellido': 'rodriguez',
    'edad': 24,
    'altura': 1.78,
    'sueldo': 1245.66
  };

  /*util.linea(46);
  print('Nombre: ${empleado['nombre'].toString().toUpperCase()}');
  print('Apellido: ${empleado['apellido'].toString().toUpperCase()}');*/
  
  util.encabezado('datos del empleado', 46);
  for (var item in empleado.entries) {
    print('${item.key.toUpperCase()}: ${item.value}');
  }
  util.linea(46);
}