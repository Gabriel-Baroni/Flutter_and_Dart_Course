import 'package:http/http.dart' as http;

void main() async {
    //Pega a url e coloca em uma variável
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  //Faz um requisição do tipo GET para a url e espera a resposta para guarda-la na variavel
  var response = await http.get(url);
  
//Se a resposta for codigo 200 (codigo de sucesso em HTTP)
  if (response.statusCode == 200) {
    print('Response data: ${response.body}');
  } else {
    print('Request failed with status: ${response.statusCode}');
  }
}
