void main(List<String> args) {
  final int num4a = 2;
  final int num4b = 3;
  int richista4a = sommaProdotto(num4a, num4b);
  int richista4b = sommaProdotto(num4a, num4a);
  print("Esisto richista4a: $richista4a");
  print("Esisto richista4b: $richista4b");
}

int sommaProdotto(int a, int b) => (a == b) ? (a + b) * 3 : a + b;
