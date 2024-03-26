import 'dart:math';

void main() {
  // Inicializa a lista de números inteiros com 15 números aleatórios entre 1 e 5000
  List<int> numeros = List.generate(15, (_) => gerarNumeroAleatorio());

  // Ordena a lista de números inteiros em ordem crescente
  numeros.sort();

  // Para cada número na lista, imprime suas representações em diferentes bases
  for (int numero in numeros) {
    print("Decimal: $numero, Binário: ${decimalParaBase(numero, 2)}, Octal: ${decimalParaBase(numero, 8)}, Hexadecimal: ${decimalParaBase(numero, 16)}");
  }
}

// Função para converter um número decimal para outra base
String decimalParaBase(int numero, int base) {
  return numero.toRadixString(base);
}

// Função para gerar um número aleatório entre 1 e 5000
int gerarNumeroAleatorio() {
  return Random().nextInt(5000) + 1;
}
