/*import 'dart:io';

void main() {
  // 두 수를 입력받아
  // A+B
  // A-B
  // A*B
  // A/B
  stdout.write('두 수를 입력하세요.\n');
  stdout.write('A = ');
  var a = stdin.readLineSync();
  stdout.write('B = ');
  var b = stdin.readLineSync();
  var a1 = int.parse(a ?? '0'); // 형 변환, NULL이면 0으로 바꿔라(a!도 가능)
  var b1 = int.parse(b ?? '0');
  var r1 = a1 + b1;
  var r2 = a1 - b1;
  var r3 = a1 * b1;
  var r4 = a1 / b1;

//  stdout.write('input any sentences : '); // 출력
//  var r1 = stdin.readLineSync(); // 키보드로 입력받음

  stdout.writeln('A + B = $r1'); // 출력
  stdout.writeln('A - B = $r2');
  stdout.writeln('A * B = $r3');
  stdout.writeln('A / B = $r4');
}*/

/*
import 'dart:io';

void main() {
  // 다음과 같이 실행되는 프로그램을 작성하시오.
  // ? 5
  // ? 4
  // ? 7
  // ? 2
  // ? -1
  // Max : 7
  // Min : 2
  stdout.write('? ');
  var r = stdin.readLineSync();
  var r1 = int.parse(r!); // 형 변환
  var Max = r1; // Max에 r1 저장
  var Min = r1; // Min에 r1 저장
  for (;;) {
    // 무한 반복
    stdout.write('? '); // ? 출력
    var r = stdin.readLineSync(); // 키보드로 입력 받음
    var r1 = int.parse(r!); // 형 변환
    if (r1 == -1) {
      // r1이 -1이면 Max와 Min을 출력하고 프로그램 종료
      stdout.writeln('Max : $Max');
      stdout.write('Min : $Min');
      break; // 루프 깨기
    }
    if (Max < r1) {
      // Max가 r1보다 작으면 Max에 r1 저장
      Max = r1;
    }
    if (Min > r1) {
      // Min가 r1보다 크면 Min에 r1 저장
      Min = r1;
    }
  }
}*/

/*
import 'dart:io';

void main() {
  stdout.write('정수 A : ');
  var a = stdin.readLineSync();
  stdout.write('정수 B : ');
  var b = stdin.readLineSync();

  var a1 = int.parse(a!);
  var b1 = int.parse(b!);

  int lower = 0;
  int upper = 0;

  if (a1 > b1) {
    lower = b1;
    upper = a1;
  } else {
    lower = a1;
    upper = b1;
  }

  int sum = 0;

  for (int i = lower; i < upper; i++) {
    sum += i;
  }

  stdout.write(sum);
}*/

/*
import 'dart:io';

void main(){
  //다음과 같이 실행되는 프로그램을 작성하시오
  //? 3
  //? 2
  //? 3
  //? 2
  //? 1
  //? -1
  //총 갯수는 3 (같은 수는 무시)

  var list = [];
  
  for(;;){
    stdout.write('? ');
    var r = stdin.readLineSync();

    if(r == '-1'){
      break;
    }
    if(list.contains(r)){
      list.add(r);
    }
    
  }
  stdout.write(list.length);
}*/

import 'dart:io';

void main() {

  
}
