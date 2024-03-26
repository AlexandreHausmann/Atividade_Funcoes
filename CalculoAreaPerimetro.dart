import 'dart:math';

void main() {
  // Inicializa a lista de raios com 10 números aleatórios entre 1 e 100
  List<double> raios = List.generate(10, (_) => gerarNumeroAleatorio());

  // Calcula e imprime a área e o perímetro para cada raio na lista
  for (double raio in raios) {
    double area = calcularArea(raio);
    double perimetro = calcularPerimetro(raio);
    print("Raio: $raio, Área: ${area.toStringAsFixed(2)}, Perímetro: ${perimetro.toStringAsFixed(2)}");
  }
}

// Função para calcular a área de um círculo com base no raio
double calcularArea(double raio) {
  return pi * raio * raio;
}

// Função para calcular o perímetro de um círculo com base no raio
double calcularPerimetro(double raio) {
  return 2 * pi * raio;
}

// Função para gerar um número aleatório entre 1 e 100
double gerarNumeroAleatorio() {
  return Random().nextInt(100) + 1;
}
