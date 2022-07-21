void main() {
  // ignore: unused_local_variable
  Constructors constructors = Constructors('Ailton', age: 20, hobby: '');
}

class Constructors {
  String? name;
  String? hobby;
  int? age;

  Constructors.noName(this.name, this.hobby, this.age); //Construtor NÃO NOMEADO

  Constructors.nomeadoOpcionais({
    this.name,
    this.hobby,
    this.age,
  }); // Construtor NOMEADO COM PARAMETROS OPCIONAL

  Constructors.nomeadoRequerido({
    required this.name,
    required this.hobby,
    required this.age,
  }); // Construtor NOMEADO COM PARAMETROS REQUERIDO

  Constructors.hibrido(
    this.name, {
    required this.hobby,
    required this.age,
  }); // Construtor HÍBRIDO

  Constructors(
    this.name, {
    this.hobby = 'programar',
    required this.age,
  }); // Construtor HÍBRIDO com VALORES DEFAULT
}

class Carro {
  String? name;
  String? brand;
  int? ano;

  Carro.noNamedParameters(
    this.name,
    this.brand,
    this.ano,
  );

  Carro.optionalNamedParameters({
    this.name,
    this.brand,
    this.ano,
  });

  Carro.requiredNamedParameters({
    required this.name,
    required this.brand,
    required this.ano,
  });

  Carro.hybridDefault(
    this.name, {
     this.brand = 'Volksw,agen',
    required this.ano,
  });
}
