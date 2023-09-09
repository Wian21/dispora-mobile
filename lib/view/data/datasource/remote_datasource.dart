import 'package:dio/dio.dart';
import 'package:dispora_mobile_new/view/data/model/user.dart';
import 'package:dispora_mobile_new/view/data/model/pegawai.dart';

class RemoteDataSource {
  final dio =
      Dio(BaseOptions(baseUrl: 'https://diasporacirebonkab.online/api'));

  Future<DataPegawai> getPegawai() async {
    final response = await dio.get('/pegawai');
    return DataPegawai.fromJson(response.data);
  }
}

// class DataPegawai {
//   final dio =
//       Dio(BaseOptions(baseUrl: 'https://diasporacirebonkab.online/api'));

//   Future<DataPegawai> getPegawai() async {
//     final response = await dio.get('/pegawai');
//     return DataPegawai.fromJson(response.data);
//   }
// }
