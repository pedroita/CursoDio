class Aluno {
  String _nome = "";
  final List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  List<double> getNotas() {
    return _notas;
  }

  void adicioanarNotas(double nota) {
    _notas.add(nota);
  }

  double retonarMedia() {
    var totalNotas = 0.0;
    for (var nota in _notas) {
      totalNotas = totalNotas + nota;
    }
    var media = totalNotas / _notas.length;
    return media.isNaN ? 0 : media;
  }

  bool aprovado(double notaCorte) {
    return retonarMedia() >= notaCorte;
  }
}
