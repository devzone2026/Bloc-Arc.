import 'package:bloc_demo/bloc/login/login_event.dart';
import 'package:bloc_demo/bloc/login/login_state.dart';
import 'package:bloc_demo/repos/api/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/login_resp_model.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialize()) {
    on<LoginReqEvent>((event, emit) async {
      emit(LoginLoadingState());
      try {
        LoginRespModel loginRespModel = await LoginRepo().login(
            event.loginReqModel?.username ?? 'N/A',
            event.loginReqModel?.password ?? '');
        emit(LoginLoadedState(loginRespModel: loginRespModel));
      } catch (e) {
        emit(LoginErrorState(errorMsg: e.toString()));
      }
    });
  }
}
