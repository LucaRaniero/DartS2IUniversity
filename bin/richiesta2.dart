void main(List<String> args) {
  palindroma("ingegni");
}

void palindroma(String paroleDaControllare) {
  //A voler essere ancora più precisi si possono andare 
  // a gestire i caratteri speciali con i regex
  String paroleDaControllareSistemate =
      paroleDaControllare.toUpperCase().replaceAll(' ', '');

  String paroleAlContrario =
      paroleDaControllareSistemate.split('').reversed.join();

  if (paroleAlContrario == paroleDaControllareSistemate) {
    print("La stringa è palindroma");
  } else {
    print("La stringa non è palindroma");
  }
}
  //Per curiosità ho chiesto a ChatGPT di darmi la sua soluzione e la risoluzione è molto simile alla mia
  // e infatti ad essere più preciso usa i regex (sono consapevole dell'esistenza ma non li ho ancora approfonditi)
  // // Rimuovi gli spazi e i caratteri di punteggiatura dalla stringa
  // String cleanString = input.replaceAll(RegExp(r'[^\w\s]'), '').toLowerCase();

  // // Verifica se la stringa è palindroma
  // if (cleanString == cleanString.split('').reversed.join('')) {
  //   print('La stringa è palindroma');
  // } else {
  //   print('La stringa non è palindroma');
  // }
// }
