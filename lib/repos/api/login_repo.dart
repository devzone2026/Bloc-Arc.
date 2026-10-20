import 'dart:convert';

import 'package:bloc_demo/model/login_req_model.dart';
import 'package:http/http.dart' as http;

import '../../model/login_resp_model.dart';

class LoginRepo{

  Future<LoginRespModel> login(String username, String password) async{

    var url = 'https://dummyjson.com/auth/login';

    LoginReqModel  loginReqModel= LoginReqModel(username: username, password: password,expiresInMins: '30');

    http.Response response = await http.post(Uri.parse(url),
        headers: { 'Content-Type' : 'application/json' },
        body: jsonEncode(loginReqModel.toJson()));
    try{
      if(response.statusCode == 200){
        var result = jsonDecode(response.body);
        return LoginRespModel.fromJson(result);
      }else{
        return LoginRespModel();
      }

    }catch(e){
      throw Exception(e);
    }
    
  }

  


}