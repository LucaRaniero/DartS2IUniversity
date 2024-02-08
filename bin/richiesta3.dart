void main(List<String> args) {
  final int base = 4;
  final int altezza = 6;
  int areaRettangolo1 = areaRettangolo(base, altezza);
  print(areaRettangolo1);
}

int areaRettangolo(int base, int altezza) => base * altezza;
