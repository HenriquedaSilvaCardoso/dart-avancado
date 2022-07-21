// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  Computer computer = Computer(brand: 'Positivo', age: 10);

  // Toda lista tem generics, pois o Dart não sabe qual o tipo que vamos definir para a mesma
  List<int> nomes = [10, 2, 1];
  print(computer.primeiroValor(nomes));

  // Quando passamos um tipo para um dado genérico, o Dart tipa automaticamente esse objeto durante toda a execução.
}

abstract class Controller<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}


// Uma forma de criar uma classe genérica (Ai podemos tipá-la quando formos usar)
class Computer<T> {
  String brand;
  int age;
  Computer({
    required this.brand,
    required this.age,
  });

  void openProgram<T>(T program) {
    print(program.toString());
  }

  // Nesse caso não sabemos qual será o retorno, não sabemos qual o tipo de lista, então usamos generics.
  // E depois do nome do método n´s usamos generics para falar que esse método terá gneerics
  T primeiroValor<T>(List<T> lista) {
    return lista[0];
  }
}

class Office {}

class Steam {}
