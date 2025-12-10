// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'utilidades.dart' as util;

void main(){
  // Definir variables

  util.encabezado('lista de edades', 50);

  List<int> edades = [17,21,19,21,17,15,23,17,19,25,28,14];

  util.linea(50);
  print('Cantidad de edades es ${edades.length}'); //.lenght es un metodo y se usa para contar la cantidad
                                                   // de valores que tiene la lista
  util.linea(50);
  print('La tercera edad es ${edades[2]}');
  util.linea(50);
  print('La quinta edad es ${edades.elementAt(4)}');
  util.linea(50);
  print('La ultima edad es ${edades.last}');
  //print('La ultima edad es ${edades[edades.length - 1]}');
  util.linea(50);
  edades.add(29);
  print(edades);
  util.linea(50);
  edades.addAll([24, 33, 27]);
  print(edades);
  util.linea(50);
  print('Porción de la lista edades ${edades.sublist(2,6)}'); //Esto es para tomar una porcion de la lista
  util.linea(50);
  
  util.encabezado('leer lista de edades (for i)', 50);
   for (var i = 0; i < edades.length; i++) {
     print('La edad $i es ${edades[i]}');
   }
  util.encabezado('leer lista de edades', 50);
  for (var edad in edades) {
    print('La edad es $edad');
  }
  /*for (var i = 0; i < edades.length; i++) {
    
  }*/
  util.encabezado('leer lista de edades (for each)', 50);
  edades.forEach((edad)=>print('la edad es $edad'));
  
  util.encabezado('edades ordenadas ascendente', 50);
  edades.sort();  
  edades.forEach((edad) => print('La edad es $edad'));

  util.encabezado('edades ordenadas descendente', 50);
  edades.sort((a, b) => b - a);
  edades.forEach((edad) => print('la edad es $edad'));

  util.encabezado('Lista de mayores de edad', 50);
  edades
  .where((edad) => edad >= 18)
  .forEach((edad) => print('La edad es $edad'));

  util.encabezado('Lista de menores de edad', 50);
  edades
  .where((edad) => edad < 18)
  .forEach((edad) => print('la edad es $edad'));

  util.encabezado('lista de edades unicas', 50);
  var edadesUnicas = edades.toSet().toList();
  edadesUnicas.forEach((edad) => print('La edad es $edad')); // Esto es para que me de los valores sin repetirlos
}