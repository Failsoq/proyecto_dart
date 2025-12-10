/* Lista de ciudades agregadas desde teclado */
import './utilidades.dart' as util;

void main() {
  //Definir variables
  List<String> ciudades = [];
  List<String> avisos = [
    'primera',
    'segunda',
    'tercera',
    'cuarta',
    'quinta',
    'sexta',
  ];
  String ciudad = '';
  const int nroCiudades = 6;

  util.encabezado('ingreso de ciudades', 46);

  for (var i = 0; i < nroCiudades ; i++) { // Se usa 'for i' porque la lista es vacia y solo funciona con 'for i'
    ciudad = util.leerTexto('Ingresa la ${avisos[i]}', 'ciudad');
    ciudades.add(ciudad);
  }
  
  verCiudades(ciudades, 'ver lista de ciudades', 46);

  ciudades.sort();
  verCiudades(ciudades, 'Ciudades ordenadas en ascendente', 46);
  

  verCiudades(ciudades, 'ciudades ordenadas descendente', 46);
  ciudades.sort((a, b) => b.compareTo(a));
  
  }

void verCiudades(List<String> ciudades, String titulo, int largo){
  util.encabezado(titulo, largo);
  for (var ciudad in ciudades) {
    print('La ciudad es ${ciudad.toUpperCase()}');
  }
}