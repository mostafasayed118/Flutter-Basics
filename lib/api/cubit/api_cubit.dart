import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_code_flutter/api/model/album_model.dart';

part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());
  List<AlbumModel> albums = [];

  void fetchApi() async {
    var data = [];
    emit(ApiLoadingState());
    await Dio()
        .get('https://jsonplaceholder.typicode.com/albums')
        .then((value) {
      log(value.statusCode.toString());
      data = value.data;
      albums = data.map((e) => AlbumModel.fromJson(e)).toList();
      log(albums.toString());
      emit(ApiSuccessState());
    }).catchError((error) {
      log(error.toString());
      emit(ApiErrorState());
    });
  }
}
