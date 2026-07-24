import 'package:intl/intl.dart';

void main() {
//Pega a data do sistema e a formata em um formato padrao
  var now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(now);
  print('Formatted date: $formattedDate');
}
