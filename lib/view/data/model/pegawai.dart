class DataPegawai {
  final List<Pegawai> data;
  DataPegawai({required this.data});
  factory DataPegawai.fromJson(Map<String, dynamic> json) => DataPegawai(
        data: List.from(
            json['data'].map((pegawai) => Pegawai.fromModel(pegawai))),
      );
}

class Pegawai {
  final int id;
  final String nama;
  final String jabatan;
  final String foto_profil;

  Pegawai({
    required this.id,
    required this.nama,
    required this.jabatan,
    required this.foto_profil,
  });

  factory Pegawai.fromModel(Map<String, dynamic> json) => Pegawai(
        id: json['id'],
        nama: json['nama'],
        jabatan: json['jabatan'],
        foto_profil: json['foto_profil'],
      );
}
