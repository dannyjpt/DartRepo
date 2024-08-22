void main() {
  final student = Person('Juan','Ruiz',25,312586974,'juan@gmail.com');
  //print(student.name);
  
  final perro = Animal(raza: 'Labrador',propietario: student.name, fechaN: '27/11/2005',vacuna: 'vacuna1');
  print(perro);
}


  class Person{
      String name;
      String lastName;
      int age;
      int phone;
      String email;
    
      Person(this.name, this.lastName, this.age, this.phone, this.email);

  }

  class Animal{
      String raza;
      String propietario;
      String fechaN;
      String vacuna;
    
      Animal({this.raza = '', this.propietario = '', this.fechaN = '', this.vacuna = ''});
      @override 
      String toString(){
        return(
        '''
        ${this.raza}
        ${this.propietario}
        ${this.fechaN}
        ${this.vacuna}
        '''
        );
      }
  }

