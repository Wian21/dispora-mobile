import 'package:dispora_mobile_new/view/data/datasource/remote_datasource.dart';
import 'package:flutter/material.dart';
import 'package:dispora_mobile_new/view/data/model/pegawai.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

part 'pegawai_event.dart';
part 'pegawai_state.dart';

class PegawaiBloc extends Bloc<PegawaiEvent, PegawaiState> {
  final DataPegawai dataPegawai;
  PegawaiBloc({required this.dataPegawai}) : super(PegawaiInitial()) {
    on<LoadPegawai>((event, emit) async {
      emit(PegawaiLoading());
      try {
        final result = await dataPegawai.getPegawai();
        emit(PegawaiLoaded(result.data));
      } catch (error) {
        emit(PegawaiError(error.toString()));
      }
    });
  }
}
