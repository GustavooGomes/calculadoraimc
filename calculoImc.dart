import 'dart:io';

void main() {
  print("Seja bem vindo a Calculadora de IMC");
  stdout.write("Primeiro, escreva seu peso em Kilogramas: ");
  int peso = int.parse(stdin.readLineSync()!);
  stdout.write("Segundo, escreva sua atual altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  double alturaMetros = altura / 100;
  double calculoImc = peso / (alturaMetros * alturaMetros);

  if(calculoImc < 18.5) {
    print("Magreza");
  } else if(calculoImc > 18.5 && calculoImc <  24.9) {
    print("Normal");
  } else if(calculoImc >= 25.0 && calculoImc <= 29.9) {
    print('Sobrepeso');
  } else if(calculoImc >= 30.0 && calculoImc <= 39.9) {
    print("Obesidade");
  } else if(calculoImc > 40) {
    print("Obesidade Grave");
  }
}