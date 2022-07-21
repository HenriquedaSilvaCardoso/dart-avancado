void main() {

}

class Animal {
  // métodos
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void run() {
    // Uma das formas de tratar os nulos
    // if (age!= null &&  weight != null) {
    //   double result = age! * weight!;
    // }
    // ?? = null safe operator, serve para assignar um valor a uma variável que possa ser nula
    // String newString =  name ?? 'desconhecido';
    // double result = (age ?? 1) * (weight ?? 1);

    print('Correndo...');
  }

  void scream() {
    print('Gritando...');
  }
}