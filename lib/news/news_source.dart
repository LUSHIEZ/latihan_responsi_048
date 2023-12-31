import 'package:latihan_responsi_048/base_network.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();

  Future<Map<String, dynamic>> getNews() {
    return BaseNetwork.get("articles");
  }

  Future<Map<String, dynamic>> getDetailNews(int idDiterima) {
    String id = idDiterima.toString();
    return BaseNetwork.get("articles/$id");
  }
}