import 'dart:math'; // Importa a biblioteca 'dart:math' para usar a classe Random.

void main() {
  // Gera duas listas aleatórias de 5 elementos cada.
  List<int> lista1 = gerarListaAleatoria(5);
  List<int> lista2 = gerarListaAleatoria(5);

  // Imprime as duas listas geradas.
  imprimirLista(lista1);
  imprimirLista(lista2);

  // Soma os elementos correspondentes das duas listas e armazena o resultado.
  List<int>? listaFinal = somarListas(lista1, lista2);

  // Se a lista final não for nula, imprime as ações e a lista final.
  if (listaFinal != null) {
    imprimirAcoes(lista1, lista2);
    imprimirLista(listaFinal);
  } else { // Caso contrário, imprime "Lista vazia".
    print("Lista vazia");
  }
}

// Função para gerar uma lista de inteiros aleatórios de tamanho especificado.
List<int> gerarListaAleatoria(int tamanho) {
  Random random = Random();
  return List.generate(tamanho, (_) => random.nextInt(101)); // Gera números aleatórios entre 0 e 100.
}

// Função para imprimir uma lista.
void imprimirLista(List<int> lista) {
  // Verifica se a lista está vazia e imprime "Lista vazia" se estiver.
  // Caso contrário, imprime os elementos da lista separados por vírgulas.
  if (lista.isEmpty) {
    print("Lista vazia");
  } else {
    print("Lista: ${lista.join(', ')}");
  }
}

// Função para somar os elementos correspondentes de duas listas.
// Retorna a lista resultante da soma ou null se as listas tiverem tamanhos diferentes.
List<int>? somarListas(List<int> lista1, List<int> lista2) {
  // Verifica se as listas têm tamanhos diferentes e retorna null em caso afirmativo.
  if (lista1.length != lista2.length) {
    return null;
  }

  // Inicializa uma lista para armazenar os resultados da soma.
  List<int> resultado = [];

  // Percorre as listas, soma os elementos correspondentes e os adiciona à lista de resultados.
  for (int i = 0; i < lista1.length; i++) {
    resultado.add(lista1[i] + lista2[i]);
  }

  return resultado;
}

// Função para imprimir as ações realizadas durante a soma das listas.
void imprimirAcoes(List<int> lista1, List<int> lista2) {
  // Percorre as listas, imprimindo a soma dos elementos correspondentes.
  for (int i = 0; i < lista1.length; i++) {
    print("${lista1[i]}+${lista2[i]}");
  }
}
