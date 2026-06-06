import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:reminder_kelompok/core/constants/variable.dart';
import 'package:reminder_kelompok/data/datasource/auth_local_datasource.dart';
import 'package:reminder_kelompok/data/model/request/auth_request_model.dart';
import 'package:reminder_kelompok/data/model/response/auth_response_model.dart';

// ini buat nampung si end-point url
class AuthRemoteDatasource {
  // ini pake l dan r
  // l = error, r = success
  // dataLogin nanti bakal ditampung sama si loginrequestmodel
  Future<Either<String, AuthResponseModel>> login(AuthRequestModel dataLogin) async{
    final response = await http.post(Uri.parse('${Variable.baseUrl}/api/login'),
    headers: <String, String>{
      'Content-Type' : 'application/json; charset=UTF-8',
      'Accept' : 'application/json',
    },
    body: dataLogin.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else{
      return Left(response.body);
    }
  }

  // untuk logout
  Future<Either<String, String>> logout() async{
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variable.baseUrl}/api/logout'),
      headers: <String, String>{
        'Content-Type' : 'application/json; charset=UTF-8',
        'Accept' : 'application/json',
        'Authorization' : 'Bearer ${authData.token}'
      }
    );

    if (response.statusCode == 200) {
      return Right('Logout Berhasil');
    } else {
      return Left(response.body);
    }
  }
}