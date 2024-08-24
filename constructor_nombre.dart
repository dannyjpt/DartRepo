/*
Crear una clase persona con los atributos nombre, apellido, edad.
Crear un constructor normal y recibir estos parametros e imprimirlos.
Crear un constructor por nombre llamado ApiData en donde se reciban los parametros con el tipo coleccion Map<String, Dynamic>.
Sobreescribir el metodo toString() de la clase y enviar un mensaje personalizado con los valores de las propiedades.
Instanciar la clase y hacer uso de ambos constructores.
Hacer uso de los ASSERTS en el constructor principal de la clase, y evaluar si la edad es mayor o igual a 18 años imprimir un mensaje en consola diciendo que es mayor de edad.
*/

void main() {
  
  final estudiante = Person(name: 'Luis', lastName: 'Ruiz', age: 15);
  print(estudiante);
  
  final Map<String, dynamic> apiData = {
    'name': 'Juan',
    'lastName': 'Díaz',
    'age': 23
  };
  
  final empleado = Person.fromJson(apiData);
  print(empleado);
  
}


class Person{
  String name;
  String lastName;
  int age;
  
    
  Person({required this.name, 
              required this.lastName, 
              required this.age,}){
    assert(age >= 0, 'ingresa una edad válida');
    if (age >= 18) {
      print('$name es mayor de edad.');
    } else {
      print('$name no es mayor de edad.');
    }
  }
  
  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found', 
        lastName = json['lastName'] ?? 'No lastName found',
        age = json['age'] ?? 0;
  
  
  
  @override
  String toString() {
    return '$name, $lastName, $age';
  }

}
