void main(List<String> args) {
  List<Studente> listaStudenti = [
    Studente("Mario", "Rossi", 7777, 29),
    Studente("Elena", "Verdi", 1313, 32)
  ];
  List<Docente> listaDocenti = [
    Docente("Lucia", "Marrone", 4949, 58),
    Docente("Carlo", "Giallo", 4848, 63)
  ];

  Universita interaUniversita = Universita(listaDocenti, listaStudenti);
  Docente? scopriDocente = interaUniversita.cercaDocentiByCodice(4949);
  print(
      "Il/la docente ${scopriDocente!.getNome()} ${scopriDocente.getCognome()}"
      " è stato trovato con il codice ${scopriDocente.getCodice()}!");
  print(interaUniversita.mediaEtaDocenti());
}

double calcoloMedia(List<int> listaValori) =>
    listaValori.reduce((a, b) => a + b) / listaValori.length;

abstract class Persona {
  String nome;
  String cognome;
  int codice;
  int eta;

  Persona(this.nome, this.cognome, this.codice, this.eta);
}

class Docente extends Persona {
  Docente(String nome, String cognome, int codice, int eta)
      : super(nome, cognome, codice, eta);

  int getCodice() => codice;
  String getCognome() => cognome;
  int getEta() => eta;
  String getNome() => nome;
}

class Studente extends Persona {
  Studente(String nome, String cognome, int codice, int eta)
      : super(nome, cognome, codice, eta);

  int getCodice() => codice;
  String getCognome() => cognome;
  int getEta() => eta;
  String getNome() => nome;
}

class Universita {
  List<Docente> listaDocenti;
  List<Studente> listaStudenti;
  Universita(this.listaDocenti, this.listaStudenti);

  Docente? cercaDocentiByCodice(int codice) {
    for (Docente docente in listaDocenti) {
      if (docente.getCodice() == codice) {
        return docente;
      }
    }
    return null;
  }

  List<Docente> cercaDocentiByCognome(String cognome) {
    List<Docente> docentiPerCognome = [];
    for (Docente docente in listaDocenti) {
      if (docente.getCognome() == cognome) {
        docentiPerCognome.add(docente);
      }
    }
    return docentiPerCognome;
  }

  Studente? cercaStudentiByCodice(int codice) {
    for (Studente docente in listaStudenti) {
      if (docente.getCodice() == codice) {
        return docente;
      }
    }
    return null;
  }

  List<Studente> cercaStudenteByCognome(String cognome) {
    List<Studente> studentiPerCognome = [];
    for (Studente docente in listaStudenti) {
      if (docente.getCognome() == cognome) {
        studentiPerCognome.add(docente);
      }
    }
    return studentiPerCognome;
  }

  double mediaEtaStudenti() {
    List<int> listaEtaStudenti = [];
    for (Studente studente in listaStudenti) {
      listaEtaStudenti.add(studente.getEta());
    }
    return calcoloMedia(listaEtaStudenti);
  }

  double mediaEtaDocenti() {
    List<int> listaEtaDocenti = [];
    for (Docente docente in listaDocenti) {
      listaEtaDocenti.add(docente.getEta());
    }
    return calcoloMedia(listaEtaDocenti);
  }
}
