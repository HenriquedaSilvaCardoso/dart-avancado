void main() {
  Client client1 = Client();
  client1.name = 'Ailton';
  client1.bankAccount = 'A9122ABC';
}

class Person {
  String? name;
  String? cpf;
  int? age;
}

class Client extends Person { // Is}so é herança (Herdar tudo que a outra classe tem, atributos, métodos)
  String? bankAccount;
}