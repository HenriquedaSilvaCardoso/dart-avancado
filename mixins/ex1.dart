void main() {
  Programmer pessoa1 = Programmer(age: 21, name: 'Jerson', favoriteLanguage: 'Dart');
  DataAnalist pessoa2 = DataAnalist(age: 30, name: 'Mariano', favoriteModel: 'MVC');

  pessoa1.runSoftware();
  pessoa2.runSoftware();
  
}

class Person {
  String name;
  int age;
  Person({
    required this.name,
    required this.age,
  });

  void ageing() {
    age++;
  }

  void marrying() {
    name += ' Pereira';
  }
}

class Programmer extends Person with Computer {
  String favoriteLanguage;
  Programmer({
    required super.age,
    required super.name,
    required this.favoriteLanguage,
  });
}

class DataAnalist extends Person with Computer {
  String favoriteModel;

  DataAnalist({
    required super.age,
    required super.name,
    required this.favoriteModel,
  });
}

class CivilEngineer extends Person {
  String favoriteBrick;

  CivilEngineer({
    required super.name,
    required super.age,
    required this.favoriteBrick,
  });
}

mixin Computer {
  T favoriteThing;
  void runSoftware() {
    print('Sua coisa favorita é: ', );
  }
}
