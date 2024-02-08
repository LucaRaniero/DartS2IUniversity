void main(List<String> args) {
  var arr = [6, 3, 1, 2, 9];

  print("la media dell'array è pari a: ${calcoloMedia(arr)}");
}

double calcoloMedia(List<int> listaValori) =>
    listaValori.reduce((a, b) => a + b) / listaValori.length;
