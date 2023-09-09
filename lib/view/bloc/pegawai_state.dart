part of 'pegawai_bloc.dart';

@immutable
abstract class PegawaiState {}

class PegawaiInitial extends PegawaiState {}

class PegawaiLoading extends PegawaiState {}

class PegawaiLoaded extends PegawaiState {
  final List<Pegawai> pegawai;
  PegawaiLoaded(this.pegawai);
}

class PegawaiError extends PegawaiState {
  final String error;
  PegawaiError(this.error);
}
