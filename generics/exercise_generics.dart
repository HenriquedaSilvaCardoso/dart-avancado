// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  Carro<String> car = Carro(gen: 'Pimba');

  print(car.imprimaValor());
}

class Carro<T> {
  T gen;

  Carro({
    required this.gen,
  });

  T imprimaValor() {
    print(gen);
    return gen;
  }  
}
