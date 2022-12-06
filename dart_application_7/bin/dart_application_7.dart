/*
void main() async {
  var version = await checkVersion();
  print("Version = $version");
  print('end process');
}

Future checkVersion() async {
  var version = await lookupVersion();
  return version;
//  print(version);
}

int lookupVersion() {
  return 10;
}*/

/*
void main() {
  printOne();
  printTwo();
  printThree();
}

void printOne() => print('One');

void printTwo() async {
  Future.delayed(Duration(seconds: 1), () {
    print('Future!');
  });
  print('Two');
}

void printThree() {
  print('Three');
}

void main() {
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    sum += i;
  }

  print('$sum');
} */

/*
import 'dart:async';

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    print('sumStream : $value');
    sum += value;
  }

  return sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    print('countStream : $i');
    yield i;
  }
}

void main() async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);
}
*/

/*
void main() {
  for (int i = 2; i <= 9; i++) {
    for (int a = 1; a <= 9; a++) {
      var result = 0;
      result += a * i;
      print('$i * $a = $result');
      // print('$i * $a = ${i * a}');랑 같음
    }
    print('\n');
  }
}
*/

/*
void main() {
  //maxSpeed, price, name

  Car bmw = Car(320, 100000, 'BMW');
  Car benz = Car(250, 70000, 'BENZ');
  Car ford = Car(200, 80000, 'FORD');

  bmw.saleCar();
  benz.saleCar();
  ford.saleCar();

  print(bmw.price);
}

class Car {
  late int maxSpeed;
  late num price;
  late String name;

  Car(int maxSpeed, int price, String name) {
    this.maxSpeed = maxSpeed;
    this.price = price;
    this.name = name;
  }

  void saleCar() {
    this.price *= 0.9;
  }
}
*/

/*
import 'dart:collection';
import 'dart:math' as math;

void main() {
  var rand = math.Random();
  HashSet<int> lotteryNumber = HashSet();

  while (lotteryNumber.length < 6) {
    lotteryNumber.add(rand.nextInt(45) + 1);
  }

  print(lotteryNumber);
}
*/