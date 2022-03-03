import 'dart:io';

void genapPattern(int N) {
  for (int i = 1; i <= N; i++) {
    for(int j = 1; j <= N+1-i; j++){
        stdout.write(j);
    }
    for(int j = 1; j < i*2-1; j++){
        stdout.write(" ");
    }
    for(int j =N+1-i; j >= 1; j--){
        stdout.write(j);
    }
    print("");
  }
}
void main(List<String> arguments) {
  stdout.write("Input Number: ");
  String? dtInput = stdin.readLineSync();
  int? angka = int.parse(dtInput!);

  if (angka % 2 == 0) {
    genapPattern(angka);
  } 
  else if(angka % 2 == 1) {
    
  } 
  else {
    print("Invalid Input");
  }
}
