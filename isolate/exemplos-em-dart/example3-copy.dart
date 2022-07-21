import 'dart:isolate';

void main() async {
  print('Executando o ba dum tss');

  final receivePort = ReceivePort();
  await Isolate.spawn(workerIsolate, receivePort.sendPort);

  print('Executando o ba ba dum dum tss tss');

  print(await receivePort.first);
}

void workerIsolate(SendPort sendPort) async {
  final resposta = await Future.delayed(
    Duration(seconds: 2),
    () => 'Batera',
  );

  Isolate.exit(sendPort, resposta);
}