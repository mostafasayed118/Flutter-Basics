import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:session_code_flutter/api_2/data/end_points.dart';
import 'package:session_code_flutter/api_2/presentation/cubit/chef_state.dart';

class ChefCubit extends Cubit<ChefState> {
  ChefCubit() : super(ChefInitial());

//!SignIn post
  void signIn() async {
    await Dio().post(
      EndPoints.baseUrl + EndPoints.signIn,
      data: {
        "email": "al3tar66@gmail.com",
        "password": "asd123",
      },
    ).then((value) {
      log(value.statusCode.toString());
      log(value.data.toString());
    }).catchError((error) => log(error.toString()));
  }

//!changePassword patch
  void changePassword() async {
    await Dio(BaseOptions(headers: {
      'token':
          "FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2Y2UyNDE4ZmIxMzNjODgyYzQ0NzllMSIsImVtYWlsIjoiYWwzdGFyNjZAZ21haWwuY29tIiwibmFtZSI6Im11c3RhZmEiLCJpYXQiOjE3MjQ3OTA5MDJ9.OfpVWsxxBpb84Z-IdijLdzhFRyPw78sXlLXWExbYl94"
    })).patch(EndPoints.baseUrl + EndPoints.changePassword, data: {
      "oldPass": "asd1234",
      "newPass": "asd12345",
      "confirmPassword": "asd12345"
    }).then((value) {
      log(value.statusCode.toString());
      log(value.data.toString());
    }).catchError((error) => log(error.toString()));
  }

//! getChef
  void getChef() async {
    String token =
        "FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2Y2UyNDE4ZmIxMzNjODgyYzQ0NzllMSIsImVtYWlsIjoiYWwzdGFyNjZAZ21haWwuY29tIiwibmFtZSI6Im11c3RhZmEiLCJpYXQiOjE3MjQ3OTIwODZ9.DD-qcNETDfXi8pmQ1RrvYo5VetrhiBvmfDtMYbFLdXg";
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    var id = decodedToken['id'];
    log(id.toString());
    Dio(BaseOptions(headers: {'token': token}))
        .get(EndPoints.baseUrl + EndPoints.getChefById(id))
        .then((value) {
      log(value.statusCode.toString());
      log(value.data.toString());
    }).catchError((error) => log(error.toString()));
  }

  //! deleteChef

  void deleteChef() async {
    String token =
        "FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2Y2UyNDE4ZmIxMzNjODgyYzQ0NzllMSIsImVtYWlsIjoiYWwzdGFyNjZAZ21haWwuY29tIiwibmFtZSI6Im11c3RhZmEiLCJpYXQiOjE3MjQ3OTIwODZ9.DD-qcNETDfXi8pmQ1RrvYo5VetrhiBvmfDtMYbFLdXg";
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    var id = decodedToken['id'];
    Dio(
      BaseOptions(headers: {'token': token}),
    ).delete(EndPoints.baseUrl + EndPoints.deleteAccount,
        queryParameters: {'id': id}).then((value) {
      log(value.statusCode.toString());
      log(value.data.toString());
    }).catchError((error) => log(error.toString()));
  }
}
