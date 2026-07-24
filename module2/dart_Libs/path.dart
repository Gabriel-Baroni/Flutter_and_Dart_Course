import 'package:path/path.dart' as p;

void main() {
    //Cria um caminho com o nome do diretorio e o nome do arquivo
  var fullPath = p.join('directory', 'file.txt');
  print('Full path: $fullPath');
}
