/* for
void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var count = 0;
  // 4보다 작은 수는 몇 개 일까?
  for (var i = 0; i < list.length; i++) {
    if (list[i] < 4) {
      count++;
    }
  }

  print('Less than 4 is = $count');
}
*/

/* map
void main() {
  var test = {'a': 123, 'b': 444};

  test['a'] = 333;
  print(test.length);
}
*/

/* forEach(1)
int count = 0;

void printElement(int element) {
  if (element % 2 == 0) {
    count++;
    print(element);
  }
}

void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Pass printElement as a parameter.

  list.forEach((printElement));
  print('짝수의 총 갯수는 ' '$count' '입니다.');
}
*/

/* forEach(2)
bool printElement(int element) {
  if (element % 2 == 0) {
    print(element);
    return true;
  }

  return false;
}

void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int count = 0;

  // Pass printElement as a parameter.

  // list.forEach((p) => count += printElement(p) ? 1 : 0);
  list.forEach((p) => count += (printElement(p) == true) ? 1 : 0);
  // list.forEach(printElement); 밑에 꺼랑 같은 의미
  // list.forEach((p) => printElement(p));

  print('짝수의 총 갯수는 ' '$count' '입니다.');
}
*/

class Person {
  final String name;
  final String surname;

  Person(this.name, this.surname);

  /*
  Person(required String name, required String surname) {
    this.name = name;
    this.surname = surname;
  }
  */
}

void main() {
  var p1 = Person('Ingyu', 'Lee');

  print(p1.name);
}
