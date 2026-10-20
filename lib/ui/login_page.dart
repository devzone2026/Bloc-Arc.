import 'package:bloc_demo/bloc/login/login_bloc.dart';
import 'package:bloc_demo/bloc/login/login_event.dart';
import 'package:bloc_demo/bloc/login/login_state.dart';
import 'package:bloc_demo/model/login_req_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  var username = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    username.text = 'emilys';
    password.text = 'emilyspass';

    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: BlocConsumer<LoginBloc,LoginState>(
            builder: (context, state) {
              if(state is LoginInitialize){
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        controller: username,
                        decoration: const InputDecoration(hintText: 'username'),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: password,
                        decoration: const InputDecoration(hintText: 'password'),
                      ),
                      const SizedBox(height: 20),

                      ElevatedButton(onPressed: () {
                        LoginReqModel loginReqModel = LoginReqModel(
                            username: username.text.trim().toString(),
                            password: password.text.trim().toString(),
                            expiresInMins: '30');

                        BlocProvider.of<LoginBloc>(context).add(
                            LoginReqEvent(loginReqModel: loginReqModel));
                      }, child: const Text('Login'))
                    ],
                  ),
                );
              }
              else if(state is LoginLoadingState){
                return const Center(child: CircularProgressIndicator());
              }
              else if(state is LoginLoadedState){
                return Center(child: Text(state.loginRespModel?.username ?? 'no username'));
              }
              else if(state is LoginErrorState){
                return const Center(child: Text('Error'));
              }else {
                return Container();
              }
            },
            listener: (context, state) { })
      ),
    );
  }
}
