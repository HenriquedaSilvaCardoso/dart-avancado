void main() {
  Computer computer = Computer('Positivo');
  
  Computer.metodoEstatico();
  computer.setBrand = 'Apple';
  computer.metodoMaisComplexo(['Ailton']);

  print(computer.getBrand);
}

class Computer {
  String _brand;

  ///// Os três principais métodos especiais

  // Método Construtor
  Computer(this._brand);

  //Método Getter
  String get getBrand {
    return _brand;
  }

  //Método Setter
  set setBrand(String value) {
    _brand = value;
  }

  /////  MÉTODOS NORMAIS
  
  // método com retorno diferente e pedindo parametros
  List<Map<String, dynamic>> metodoMaisComplexo(List<String> list) {
    List<Map<String, dynamic>> myList = [
      {'name': 'Ailton', 'age': 20},
      {'name': 'Strawti', 'age': 3}
    ];

    return myList;
  }

  // Método estático
  static void metodoEstatico() {
    print('[E chamado SEM INSTANCIAR A CLASSE');
  }

  //  Método com argumentos personalizados
  void metodoComARgumentosNomeados(String value, {String? valueOptional}) {
    
  }
}
