import 'dart:math';

void main() {
  var rastgele = <int>[];

  for (var i = 0; i < 99; i++) {
    rastgele.add(Random().nextInt(51));
  }
  rastgele.sort();
  print(rastgele);
}
