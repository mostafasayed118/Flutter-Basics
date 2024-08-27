part of 'api_cubit.dart';

sealed class ApiState {}

final class ApiInitial extends ApiState {}

final class ApiLoadingState extends ApiState {}

final class ApiSuccessState extends ApiState {}

final class ApiErrorState extends ApiState {}

