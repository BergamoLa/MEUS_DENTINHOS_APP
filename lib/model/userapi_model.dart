class Usuario {
  String nome;
  String celular;
  String foto;

  Usuario(this.nome, this.celular, this.foto);

  factory Usuario.fromJson(Map<String, dynamic> json) {
    var nome = json["name"]["first"] + " " + json["name"]["last"];
    var celular = json["cell"];
    var foto = json["picture"]["medium"];
    return Usuario(nome, celular, foto);
  }

  Map<String, dynamic> toJson() => {
        'nome': nome,
        'celular': celular,
        'foto': foto,
      };
}
