class TypeW {
  late double celvin;
  late double fahreneit;
  late double celcius;

  double celvintocelcius(double celvin) {
    double celcius = celvin - 273.15;
    return celcius;
  }

  double celvintofahreneit(double celvin) {
    double fahreneit = 1.8 * (celvin - 273) + 32;
    return fahreneit;
  }

  double fahreneittocelcius(double fahreneit) {
    double celcius = 5 / 9 * fahreneit - 32;
    return celcius;
  }

  double celciustocelvin(double celcius) {
    double celvin = celcius + 237;
    return celvin;
  }

  


}
