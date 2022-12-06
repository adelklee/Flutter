import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  List<int> songs = [];
  songs.add(10);
  songs.add(5);
  songs.add(10);

  var ressult = songs.where((p) => p % 2 == 0);
  print(ressult);
}