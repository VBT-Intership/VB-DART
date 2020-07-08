main(List<String> args) {
  List<Calculate> calcultes = [Calculate(number: 5)];
  Calculate numb1 = Calculate(number: 5);
  Calculate numb2 = Calculate(number: 4);
  int numb0 = 5;
  int numb01 = 5;

  // CODE SMEEL
  int resultSum = numb0 + numb01;

  print(numb1 == numb2);

  print(numb1 - numb2);
  print(numb1 * numb2);
  print(numb1 / numb2);
}

enum _CALCULATE { SUM, DIV, SUB }

class Calculate {
  double number;
  String name;
  int x;

  Calculate({this.number});

  void numberInceremntToOnePercent() {
    number += number * 0.1;
  }

  double operator -(Calculate calculate) {
    return this.number - calculate.number;
  }

  double operator *(Calculate calculate) {
    return this.number * calculate.number;
  }

  double operator /(Calculate calculate) {
    return this.number * calculate.number;
  }

  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Calculate && o.number == number && o.name == name && o.x == x;
  }

  @override
  int get hashCode => number.hashCode ^ name.hashCode ^ x.hashCode;
}
