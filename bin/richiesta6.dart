void main(List<String> args) {
  Persona persona1 = Persona(
      'Mario', 'Rossi', 'mario.rossi@example.com', 'password123', '1990-05-15');
  Persona persona2 = Persona(
      'Anna', 'Verdi', 'anna.verdi@example.com', 'segreto456', '1985-09-20');

  print(persona1);
  print(persona2);
}

class Persona {
  String nome;
  String cognome;
  String email;
  String password;
  String dataNascita;

  Persona(this.nome, this.cognome, this.email, this.password, this.dataNascita);
}
