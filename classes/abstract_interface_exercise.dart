// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  Carro carro = Carro(tipo: 'Carro', quantidadeDeRodas: 4, marca: 'Volkswagen');
  Barco barco = Barco(tipo: 'Barco', quantidadeDeRodas: 0, rota: 'Costa de São Paulo - Florianópolis');

  carro.combustivel();
  barco.combustivel();

  carro.vrumvrum();
  barco.agua();
}

abstract class Veiculo {
  String tipo;
  int quantidadeDeRodas;

  Veiculo({
    required this.tipo,
    required this.quantidadeDeRodas,
  });
  
  void combustivel() {
    print('O combustível está acabando');
  }
  
  void quilometragem() {
    print('Esse veículo já fez 10000 km de distância');
  }
}

class Carro extends Veiculo {
  String? marca;

  Carro({required super.tipo, required super.quantidadeDeRodas, this.marca});

  void vrumvrum() {
    print('carro faz vrumvrum');
  }
}

class Barco extends Veiculo {
  String? rota;

  Barco({required super.tipo, required super.quantidadeDeRodas, this.rota});

  void agua() {
    print('O barco anda na água');
  }
}

abstract class Personagem {
  
}