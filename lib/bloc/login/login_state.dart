

import 'package:bloc_demo/model/login_resp_model.dart';
import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable{}

class LoginInitialize extends LoginState{
  @override
  List<Object?> get props => [];
}

class LoginLoadingState extends LoginState{
  @override
  List<Object?> get props => [];
}

class LoginLoadedState extends LoginState{
  LoginRespModel? loginRespModel;

  LoginLoadedState({required this.loginRespModel});
  @override
  List<Object?> get props => [loginRespModel];
}

class LoginErrorState extends LoginState{
  String? errorMsg;
  LoginErrorState({required this.errorMsg});

  @override
  List<Object?> get props => [errorMsg];
}