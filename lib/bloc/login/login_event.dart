

import 'package:bloc_demo/model/login_req_model.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable{ }


class LoginReqEvent extends LoginEvent{
  LoginReqModel? loginReqModel;
  LoginReqEvent({this.loginReqModel});

  @override
  List<Object?> get props => [loginReqModel];

}