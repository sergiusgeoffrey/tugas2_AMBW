import 'dart:io';

void genapPattern(int N){ 
  int kiri=1;
  int kanan=N;
  for (int i = 1; i <= N; i++) {
    for(int j = 1; j <= N+1-i; j++){
        if(kiri > N){
          kiri=1;
        }

        if(kiri % 9 == 0)
        {
          stdout.write(9);
          kiri++;
        }
        else{ 
          stdout.write(kiri % 9);
          kiri++;
        }
    }
    for(int j = 1; j < i*2-1; j++){
        stdout.write(" ");
    }
    for(int j = N+1-i; j >= 1; j--){
        if(kanan < 1){
          kanan=N;
        }

        if(kanan % 9 == 0)
        {
          stdout.write(9);
          kanan--;
        }
        else{
          stdout.write(kanan % 9);
          kanan--;
        }
        
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
