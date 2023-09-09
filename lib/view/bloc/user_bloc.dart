import 'package:dispora_mobile_new/view/data/datasource/remote_datasource.dart';
import 'package:flutter/material.dart';
import 'package:dispora_mobile_new/view/data/model/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final RemoteDataSource remoteDataSource;
  UserBloc({required this.remoteDataSource}) : super(UserInitial()) {
    on<LoadUser>((event, emit) async {
      emit(UserLoading());
      try {
        final result = await remoteDataSource.getPegawai();
        emit(UserLoaded(result.data.cast<User>()));
      } catch (error) {
        emit(UserError(error.toString()));
      }
    });
  }
}
