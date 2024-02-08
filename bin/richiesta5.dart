void main(List<String> args) {
  String studente1 = calcoloVotoStudente(
      nomeStudente: "Luca", votoProvaScritta: 8, votoProvaPratica: 24);
  String studente2 = calcoloVotoStudente(
      nomeStudente: "Marco", votoProvaScritta: -8, votoProvaPratica: 0);
  String studente3 = calcoloVotoStudente(
      nomeStudente: "Elisa", votoProvaScritta: 8, votoProvaPratica: 18);
  String studente4 = calcoloVotoStudente(
      nomeStudente: "Elena", votoProvaScritta: 8, votoProvaPratica: 240);

  print(studente1);
  print(studente2);
  print(studente3);
  print(studente4);
}

String calcoloVotoStudente(
    {required String nomeStudente,
    required int votoProvaScritta,
    required int votoProvaPratica}) {
  if (votoProvaScritta < -8 || votoProvaScritta > 8) {
    return "Errore nell'input per lo studente $nomeStudente: votoProvaScritta deve essere compresto tra -8 e 8";
  }
  if (votoProvaPratica < 0 || votoProvaPratica > 24) {
    return "Errore nell'input per lo studente $nomeStudente: votoProvaPratica deve essere compreso tra 0 e 24";
  }

  int votoFinale = votoProvaScritta + votoProvaPratica;

  if (votoFinale >= 18) {
    // lo switch non è strettamente necessario, avrei potuto mettere un elseif ma per "giocare" l'ho utilizzato
    switch (votoFinale) {
      case 31 || 32:
        return "Studente:$nomeStudente. Promosso con 30 e lode!";
      default:
        return "Studente:$nomeStudente. Promosso con $votoFinale!";
    }
  } else {
    return "Studente:$nomeStudente. Bocciato! Voto $votoFinale!";
  }
}
