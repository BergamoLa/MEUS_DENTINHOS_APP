class Diario {
  //Atributos
  String _id;
  String _titulo;
  String _descricao;

  //Construtor
  Diario(
    this._id,
    this._titulo,
    this._descricao,
  );

  //Getters
  String get id => _id;
  String get titulo => _titulo;
  String get descricao => _descricao;

  Diario.map(dynamic obj) {
    this._id = obj['id'];
    this._titulo = obj['titulo'];
    this._descricao = obj['descricao'];
  }

  //Converter os dados para um Mapa
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) {
      map["id"] = _id;
    }
    map["titulo"] = _titulo;
    map["descricao"] = _descricao;
    return map;
  }

  //Converter um mapa para o modelo de dados
  Diario.fromMap(Map<String, dynamic> map, String id) {
    //atribuir if ao this._id, somente se id não for
    //nulo, caso contrario atribui '' (vazio).
    this._id = id ?? '';
    this._titulo = map["titulo"];
    this._descricao = map["descricao"];
  }
}
