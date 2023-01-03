bool isPalindrome(int num) {
       if (num == 0) return true;
  if (num % 10 == 0 || num < 0) return false;
  if (num <= 9) return true;

  int numOfDigit = log(num) ~/ log(10);
  double newInt = 0;
  int firstNum = num;
  while (numOfDigit !=-1) {
    int lastDigit = num % 10;
    int process = lastDigit * pow(10, numOfDigit).round();
    numOfDigit--;
    newInt += process;
    num = num ~/ 10;
  }
  return newInt == firstNum;
}
