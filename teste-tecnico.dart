import 'dart:io';

void main() {
  print('--- Selecao de Desenvolvedor de Software - Escribo ---\n');
  bool op = true;
  while (op) {
    dividendo();
    print('Deseja continuar? [s/n]');
    var input = stdin.readLineSync()!;
    if (input == 'n') {
      op = false;
      print('--- PROGRAMA FINALIZADO ---');
    } else if (input == 's') {
      op = true;
    } else {
      op = false;
      print('COMANDO INVALIDO');
    }
  }
}

dividendo() {
  print('INFORME UM NUMERO INTEIRO:');
  var input = stdin.readLineSync()!;
  int num = int.parse(input);
  if (num <= 0) {
    print('VALOR INVALIDO!');
  } else {
    var lista = [];
    for (int i = 3; i < num; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        lista.add(i);
      }
    }
    print(lista);
    var soma = lista.reduce((total, valor) => total + valor);
    print(soma);
  }
}
