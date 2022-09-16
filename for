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
