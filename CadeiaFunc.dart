import 'dart:math';

void main() {
  // Executa função A com função B como parâmetro e imprime o resultado
  int resultadoB = funcaoA(funcaoB);
  print("Resultado da função A(B): $resultadoB");

  // Executa função A com função C como parâmetro e imprime o resultado
  int resultadoC = funcaoA(funcaoC);
  print("Resultado da função A(C): $resultadoC");
}

// Função A que executa a função recebida como parâmetro duas vezes com números aleatórios
// e retorna a soma dos resultados
int funcaoA(int Function(int) funcao) {
  // Gerar dois números aleatórios
  int numero1 = gerarNumeroAleatorio();
  int numero2 = gerarNumeroAleatorio();
  
  // Executar a função para cada número gerado e retornar a soma dos resultados
  return funcao(numero1) + funcao(numero2);
}

// Função B que recebe um número como parâmetro e retorna o quadrado desse número
int funcaoB(int numero) => numero * numero;

// Função C que recebe um número como parâmetro e retorna o dobro desse número
int funcaoC(int numero) => numero * 2;

// Função para gerar um número aleatório entre 1 e 100
int gerarNumeroAleatorio() => Random().nextInt(100) + 1;
