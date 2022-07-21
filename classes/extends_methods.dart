void main() {
  Client client1 = Client();
  client1.name = 'Ailton';
  client1.bankAccount = 'A9122ABC';
}

abstract class Person {
  String? name;
  String? cpf;
  int? birthday;

  int getAge() {
    return DateTime.now().year - birthday!; 
  }

  void login() ;
}

class Client extends Person { // Is}so é herança (Herdar tudo que a outra classe tem, atributos, métodos)
  String? bankAccount;

  @override 
  void login() {
    print('Login como cliente');
  }

  @override
  int getAge() {
    print(super.getAge()); // acessando o método getAge da classe Pai.
    return 10;
  }
}