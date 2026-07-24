import 'dart:convert';

void main() {
  String jsonString = '{"name": "Alice", "age": 30}';
  //Convertendo um JSON para um MAP
  Map<String, dynamic> user = jsonDecode(jsonString);
  print('Name: ${user['name']}');
  print('Age: ${user['age']}');

  Map<String, dynamic> newUser = {'name': 'Bob', 'age': 25};
  //Convertendo um MAP para um JSON
  String newJsonString = jsonEncode(newUser);
  print(newJsonString);
}
