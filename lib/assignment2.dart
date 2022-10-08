import 'dart:io';

int calculate() {
  return 6 * 7;
}
//get number from user.
int getNumberFromUser(){
  int? n;
  do {
    print('Enter n');
    n = int.tryParse(stdin.readLineSync() ?? '');
  } while (n == null);
  return n;
}
//how many numbers you want to check
int checkNumbers(){
  int? n;
  do {
    print('How many Number you want to check ?');
    n = int.tryParse(stdin.readLineSync() ?? '');
  } while (n == null);

  return n;
}
//get list from user.
List<int>getArrayFromUser(){
  final list = <int>[];
  int? len;
  do{
    print('Enter the length of the array');
    len = int.tryParse(stdin.readLineSync() ?? '');
  }while (len == null);
  for (var i = 0 ; i < len ; i++){
    print('Enter the array element');
    int? input;
    do{
      input = int.tryParse(stdin.readLineSync() ?? '');
    }while(input == null);
    list.add(input);
  }
  return list;
}

void runQ7(){
  print('type yes [Y] to start');
  String? y = stdin.readLineSync();
  if (y!.toLowerCase().contains('y')) {
    var divideBy5 = <int>[], divideBy6 = <int>[];
    for (int i = 100; i <= 1000; i++) {
      if (i % 5 == 0) divideBy5.add(i);
      if (i % 6 == 0) divideBy6.add(i);
    }
    print('number is divisible by 5 : $divideBy5');
    print('number is divisible by 6 : $divideBy6');
  }
}

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i < num / 2; i++) {
    if (num % i == 0) return false;
  }

  return true;
}

int findFactorial(int no) {
  if (no == 1) {
    return 1;
  }
  return no * findFactorial(no - 1);
}

int reverseNum(int num) {
  String reversedNumber = '';
  while (num != 0) {
    String temp = (num % 10).toString();
    reversedNumber = reversedNumber + temp;
    //use the truncating division operator ~/ to get an integer result from a division operation:
    num = num ~/ 10;
  }
  return int.parse(reversedNumber);
}

