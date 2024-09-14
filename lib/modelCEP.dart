class ModelApiCEP {
  String? cep;
  // final String logradouro;
  // final String complemento;
  // final String bairro;
  // final String localidade;
  // final String uf;

  ModelApiCEP ({
    required this.cep,
    // required this.logradouro,
    // required this.complemento,
    // required this.bairro,
    // required this.localidade,
    // required this.uf,
  });
  ModelApiCEP.fromJson(Map<String, dynamic> json){
    cep = json['cep'];
  }
}


