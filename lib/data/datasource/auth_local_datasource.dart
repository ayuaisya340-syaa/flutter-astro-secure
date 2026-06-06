import 'package:reminder_kelompok/data/model/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  // buat simpen data login 
  Future<void> saveAuthData(AuthResponseModel data) async{
    // ambil instamce dari shared preference, kaya buka lemari buat nyimpen barang
    final pref = await  SharedPreferences.getInstance();
    // auth_data sebagai label untuk laci supaya datanya tersimpen rapi
    // kalau pakai objek map penyimpanannya bakal penuh makanya diubah pake string supaya lebih ringan
    await pref.setString('auth_data', data.toJson());
  }

  // remove data yang login
  Future<void> removeAuthData() async{
    final pref = await SharedPreferences.getInstance();
    await pref.remove('auth_data');
  }

  // ambil data yang login
  Future<AuthResponseModel> getAuthData() async{
    final pref = await SharedPreferences.getInstance();
    final data = pref.getString('auth_data');
    if (data != null) {
      return AuthResponseModel.fromJson(data);
    } else{
      throw Exception('Data auth tidak ditemukan');
    }
  }

  // cek apakah user udah login atau belum
  Future<bool> isLogin() async{
    final pref = await SharedPreferences.getInstance();
    return pref.containsKey('auth_data');
  }
}