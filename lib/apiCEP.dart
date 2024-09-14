//https://viacep.com.br/ws/76875834/json/

import 'package:dio/dio.dart';

final dio = Dio();

class ApiCEP {
  Future<String> buscarCEP(String CEP) async {
    final response = await dio.get('https://viacep.com.br/ws/$CEP/json/');
    final resposta = response.data;
    // print(response.data);
    return 'CEP: ${resposta['cep']}, Logradouro: ${resposta['logradouro']}, Complemento: ${resposta['complemento']}, Localidade: ${resposta['localidade']}, UF: ${resposta['uf']}';
  }
}
