class Mammal {
  int addMoTo(int unangNumero, int pangalawangNumero) {
    return unangNumero + pangalawangNumero;
  }

  int subtractMoTo(int firstNum, int secondNum) {
    return firstNum - secondNum;
  }

  void main() {
    int sum = addMoTo(1, 2);
    print(sum);
    int difference = subtractMoTo(5, 10);
    print(difference);
  }
}
