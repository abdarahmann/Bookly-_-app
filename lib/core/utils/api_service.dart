import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final dio = Dio();
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
