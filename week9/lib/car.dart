class Car {
  String? brand;
  int? year;

  // Car(String _brand, int _year) {
  //   this.brand = _brand;
  //   this.year = _year;
  // }

  Car(this.brand, this.year);

  Car.createEurope(this.brand, this.year) {
    print("This is europe car");
  }

  static void getPrice() {
    print("20,000 US Dollars");
  }

  void drive(String to) {
    print("$brand driving to $to");
  }
}
