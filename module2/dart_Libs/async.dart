import 'dart:async';

void main() async {
  print('Iniciando o carregamento do app...');

  // Criamos o cronômetro para medir o tempo total
  final stopwatch = Stopwatch()..start();

  // Iniciamos as três tarefas simultaneamente
  Future<String> tarefa1 = buscarDadosDoUsuario();
  Future<String> tarefa2 = buscarConfiguracoes();
  Future<String> tarefa3 = buscarNotificacoes();

  // Aguardamos todas terminarem juntas
  List<String> resultados = await Future.wait([tarefa1, tarefa2, tarefa3]);

  print('\n--- Resultados ---');
  print(resultados[0]); // Dados do usuário
  print(resultados[1]); // Configurações
  print(resultados[2]); // Notificações

  print('\nTempo total decorrido: ${stopwatch.elapsed.inSeconds} segundos.');
}

Future<String> buscarDadosDoUsuario() async {
  await Future.delayed(Duration(seconds: 3));
  return '1. Dados do usuário carregados!';
}

Future<String> buscarConfiguracoes() async {
  await Future.delayed(Duration(seconds: 2));
  return '2. Configurações do app carregadas!';
}

Future<String> buscarNotificacoes() async {
  await Future.delayed(Duration(seconds: 4));
  return '3. Notificações carregadas!';
}

//Se você executasse essas tarefas uma depois da outra (em fila), o tempo total seria a soma delas: \(3 + 2 + 4 = 9\) segundos.
//Como rodam juntas, demora 4 segundos somente (o tempo da mais demorada)
