void main(List<String> args) {
  stampaPiramide(numRighe: 6, stringaDaStampare: "*");
}

// ho voluto "giocare" con i required, ma non sono necessari
void stampaPiramide(
    {required int numRighe, required String stringaDaStampare}) {
  for (int contatore = numRighe; contatore > 0; contatore--) {
    print(stringaDaStampare * contatore);
  }

  //PER GIOCARE CON LE POSSIBILITÀ: ho voluto provare anche con le liste
  // List<String> listaAsterischi = [
  //   for (int contatore = numRighe; contatore > 0; contatore--)
  //     stringaDaStampare * contatore
  // ];
  // listaAsterischi.forEach((element) {
  //   print(element);
  // });
}
