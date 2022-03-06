import 'dart:io';
//C14190024 - SERGIUS GEOFFREY
//TUGAS 2 - Dart Patterns

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

void ganjilPattern(int N){
  int Counter = 1;
  for(int i = 1;i<=(N / 2).toInt() + 1;i++){
    for(int a = 1;a<=(N / 2).toInt() + 1 - i;a++){
      stdout.write("*");
    }

    for(int j = 1;j<=(i*2) - 1;j++){
      if (j % 2 != 0) {
        if (Counter % 9 == 0) {
          stdout.write(9);
        } else {
          stdout.write(Counter % 9);
        }
        
        } else {
          stdout.write(" ");
        }
    }
    for(int a=(N / 2).toInt() + 1 - i; a >= 1;a--){
      stdout.write("*");
    }
    Counter++;
    print("");
  }
  for(int i=(N / 2).toInt();i>=1;i--){
      for (var a = 1; a <= (N / 2).toInt() - i + 1; a++) {
          stdout.write("*");
      }

      for (var j = 1; j <= i * 2 - 1; j++) {
        if (j % 2 != 0) {
          if (Counter % 9 == 0) {
          stdout.write(9);
        } else {
          stdout.write(Counter % 9);
        }
        } else {
          stdout.write(" ");
        }
      }
      for (var a = (N / 2).toInt() - i + 1; a >= 1; a--) {
          stdout.write("*");
      }
      Counter++;
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
    ganjilPattern(angka);
  } 
  else {
    print("Invalid Input");
  }
}
