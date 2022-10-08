import 'package:assignment2/assignment2.dart' as assignment2;
import 'package:assignment2/assignment2.dart';

void main() {
  //Q1) Write a program to calculate the sum of first n(ex: 10) natural number.
  // solution 1) using the equation : S(n) = n(n+1)/2

  print(
      'Q1) Write a program to calculate the sum of first n(ex: 10) natural number.');
  print('solution 1) using the equation : S(n) = n(n+1)/2');
  int? n = assignment2.getNumberFromUser();
  var sum = (n * (n + 1)) / 2;
  print('sum of first $n natural numbers is : $sum');

//solution 2) using the loop technique
  print('solution 2) using the loop technique');
  sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  print('sum of first $n natural numbers is : $sum');

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');

/*-------------------------------------------------------------------*/

//Q2)  Write a program to display n terms of natural number and their sum.
//solution)
  print(
      'Q2)  Write a program to display n terms of natural number and their sum.');
  print('solution ) using the loop technique');
  var arr = <int>[];
  sum = 0;
  n = assignment2.getNumberFromUser();
  for (int i = 1; i <= n; i++) {
    arr.add(i);
    sum += i;
  }
  print('The First $n natural numbers is : \n $arr ');
  print('The sum of natural numbers upto $n terms : $sum ');
  sum = 0;

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');

  //Q3) Write a program to display the n terms of odd natural number and their sum .
  // Solution )
  print(
      'Q3) Write a program to display the n terms of odd natural number and their sum.');
  print('solution ) using the equation : S(n) = n^2');

  /** brain storming...
   * index i => v  v= 2*i+1
   * index 0 => 1  1= 2*0+1
   * index 1 => 3  3= 2*1+1
   * index 2 => 5  5= 2*2+1
   * */
  //var list1 = [for (var i = 1; i <= 10; i++) i+(i-1)];
  n = getNumberFromUser();
  var list = List<int>.generate(n, (i) => (2 * i) + 1);
  print('for the $n terms of odd natural number and their sum.');
  print(list.toString());
  var s = n * n;
  print('sum = $s');

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');

  /** Q4)
   ** Write a program to enter the numbers till the user wants and at the end it should display the count of positive, negative and zeros entered
   **Hint: First Ask user how many number he want to check
   **Then make loop that loops till the number he entered
   **/
  print('Q4)');
  print(
      'Write a program to enter the numbers till the user wants and at the end it should display the count of positive, negative and zeros entered');
  print('Solution');
  n = assignment2.checkNumbers();
  print('Enter  the $n numbers');
  var nList = getArrayFromUser();
  print(nList);
  var negList = <int>[];
  var posList = <int>[];
  var zerosList = <int>[];
  for (int i in nList) {
    i == 0
        ? zerosList.add(i)
        : i < 0
            ? negList.add(i)
            : posList.add(i);
  }
  print(
      'You Entered ${posList.length} positive numbers And ${negList.length} negative and ${zerosList.length} Zero');
  print(
      '------------------------------------------------------------------------------------------------------------------------------------');
  //Q5) write a program to find the factorial value of any number you entered
  print(
      'Q5) write a program to find the factorial value of any number you entered');
  print('Solution...');
  n = getNumberFromUser();
  int f;
  f = findFactorial(n);
  print('Factorial of $n! is $f');
  /**
   *Write a program that prompts the user to input an integer and then outputs the number with the digits reversed. For example, if the input is 12345, the output should be 54321.
   *Hint: When you divide Integer number on 10 then it removes first digit from right
   *Example : 1523/10= 152
   * Hint (2) : When you get remainder of integer number over 10 then it gives you first digit from right
   *Example : 1523%10=3
   * **/
  print(
      '------------------------------------------------------------------------------------------------------------------------------------');
  print('Q6)'
      'Write a program that prompts the user to input an integer and then outputs the number with the digits reversed.'
      ' For example, if the input is 12345, the output should be 54321.');

  int? num = getNumberFromUser();
  print(reverseNum(num));

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');
  /** Q7)
   * Write a program that displays all the numbers from 100 to 1,000, that are divisible by 5 and 6.
   * Numbers are separated by exactly one space.
   * */
  print(
      'Q7 ) Write a program that displays all the numbers from 100 to 1,000, that are divisible by 5 and 6.'
      ' Numbers are separated by exactly one space.');
  runQ7();

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');

  print(
      'Q8 ) write a program that takes integer as input and print yes if number is prime number else print no ');
  print('Enter a number to check if it is truly prime number or not: ');
  int? newNumber = getNumberFromUser();
  print('is the number prime ?');
  isPrime(newNumber) ? print('Yes') : print('No');
}
