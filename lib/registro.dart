/* Registro de alumnos */
import 'package:intl/intl.dart' as intl; //Importante este paquete
import './utilidades.dart' as util;

void main() {
  //definir variables//

  String cedula = '24.122.745';
  String nombre = 'maritza';
  String apellido = 'garcia';
  int edad = 24;
  double altura = 1.78;
  double matricula = 1255.66;
  bool sexo = true; // true = Femenino y false = Masculino
  int turno = 1; // 1 = Mañana, 2 = Tarde y 3 = Noche. 0 = Sin turno asignado

  verDatos([cedula, nombre, apellido, edad, altura, matricula, sexo, turno]);
}

void verDatos(List<dynamic> datos) {
  final formatoNumerico = intl.NumberFormat('#,##0.00', 'es_VE'); //Investigar formato numerico '#,##0.00'
  util.encabezado('Datos del alumno', 46);
  
  print('Cédula: ${datos[0]}');
  print('Nombre completo: ${datos[1].toString().toUpperCase()} ${datos[2].toString().toUpperCase()}');
  print('La edad es ${datos[3]} años');
  print('La altura es ${datos[4]} mts');
  print('El costo de la matricula es ${formatoNumerico.format(datos[5])} Bs.');
  print('Sexo: ${obtenerSexo(datos[6])}');
  print('Turno: ${obtenerTurno(datos[7])}');
  util.linea(46);
}

String obtenerSexo(bool sexo) {
  if (sexo) {
    return 'Femenino';
  } else {
    return 'Masculino';
  }
}

String obtenerTurno(int turno) {
  switch (turno) {
    case 1: return 'Mañana';
    case 2: return 'Tarde';
    case 3: return 'Noche';
    case _: return 'No tiene turno';
  }
}

// IMPORTANTE: Instalar el paquete INTL

//Preguntarle a la IA Perplexity