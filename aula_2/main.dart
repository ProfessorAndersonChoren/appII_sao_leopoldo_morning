import 'people.dart';

void main() {
  var joao = People("João", "024.852.586-96");
  // joao.age = 56;

  print(joao.name);
  print(joao.age?.isNegative);
}
