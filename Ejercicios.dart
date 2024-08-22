/*
Utilizando la herramienta dartpad.dev realizar los siguientes ejercicios:

Crear una Lista, Set y un Map y recorrer su contenido e imprimirlo por consola.
Crear una funcion que imprima un saludo de bienvenida.
Crear una funcion de tipo flecha que imprima un saludo de bienvenida.
Crear una funcion sin tipado de datos que calcule el area.
Crear una funcion con tipado de datos que sume dos numeros.
Crear una funcion con variables y tipado y definiendo variables opcionales.
  */

void main() {
  //Crear una Lista, Set y un Map y recorrer su contenido e imprimirlo por consola.
  final List lista = [1, 2, 3, 4];
  for (var i = 0; i < lista.length; i++) {
    print('elemento de la lista: ${lista[i]}');
  }

  final Set<int> numeros = {5, 6, 7, 8};
  print('\n');
  for (var numero in numeros) {
    print('elemento del set: ${numero}');
  }

  final Map<String, String> usuarios = {'nombre': 'Juan', 'apellido': 'Lopez'};
  print('\n');
  for (var dato in usuarios.entries) {
    print('Elemento del map: ${dato.value}');
  }

  //Crear una funcion que imprima un saludo de bienvenida.
  saludo1() {
    print('\nHello world!!');
  }

  saludo1();

  //Crear una funcion de tipo flecha que imprima un saludo de bienvenida.
  saludo2() => print('\nHi there!');
  saludo2();

  //Crear una funcion sin tipado de datos que calcule el area.
  area(base1, altura1) {
    return base1 * altura1;
  }

  print('\nEl area de 2x5 es: ${area(2, 5)}');

  //Crear una funcion con tipado de datos que sume dos numeros.
  suma(n1, n2) {
    return n1 + n2;
  }

  print('\nLa suma de 2+5 es: ${suma(2, 5)}');

  //Crear una funcion con variables y tipado y definiendo variables opcionales.
  estado([int st = 0]) {
    if (st > 0) {
      return print('\nEl estado es HIGH');
    } else {
      return print('\nEl estado es LOW');
    }
  }

  estado();
  estado(1);
}
