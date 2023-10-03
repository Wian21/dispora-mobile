//while the app is building let's create the NewsData class
import 'package:equatable/equatable.dart';

class NewsData {
  final String title;
  final String author;
  final String content;
  final String urlToImage;
  // String? date;
  final String pengunjung;
  final DateTime ceratedAt;
  final String kategori;

  //let's create the constructor
  NewsData(
      this.title,
      this.author,
      this.content,
      // this.date,
      this.urlToImage,
      this.pengunjung,
      this.ceratedAt,
      this.kategori);

  //we will use dummy data to generate the news,but you can use a third party api or your own backend to extract the data
  //I will copy the data from my previous code, you can create your own data , I used newsApi to get the data
  static List<NewsData> breakingNewsData = [
    NewsData(
      'Apriyani Rahayu jadi komentator dadakan di BNI media clash 3.0',
      "Mercy Raya",
      "After peaking in June, they are back where they were in March, offering some relief to consumers and policymakers amid inflation worries.",
      "https://akcdn.detik.net.id/community/media/visual/2023/08/12/bni-media-clash-30-13_169.jpeg?w=700&q=90",
      "200",
      DateTime.now().subtract(const Duration(hours: 6)),
      "Sports",
    ),
    NewsData(
      "Honda Takut Kehilangan MArc Marquez",
      "Lucas Aditya",
      "Masa depan Marc Marquez di Honda sedang dispekulasikan Pabrikan Jepang itu takut kehilangan Baby Alien. Dalam kaitranya marc marquez ini menyatakan kehilangan dalam atlet pesepakbola ngarang aku aja ini  terserah aklu kamu ga perlu tau apa yang harusnyta di capai dan apa yang harusnya ditentukan hahahahahahahah persetan dengan semua ini aku ga bakal jadi seseorang yang akan menghancurkan cerita masa depan atau future hahahahahah aku hanya jadi seseorang yang akan selalu menyaksikan kehendak cerita ",
      "https://akcdn.detik.net.id/community/media/visual/2023/06/23/marc-marquez_169.jpeg?w=700&q=90",
      "200",
      DateTime.now().subtract(const Duration(hours: 6)),
      "Sports",
    ),
    NewsData(
      "Ini yang Bikin Apri/Fadia Sempat Emosi ke Wasit",
      "Mercy Raya",
      "Apriyani Rahayu/Siti Fadia Silva Ramadhanti mengaku sempat emosi dengan keputusan wasit yang merugikan mereka di China Open 2023. Ini gegaranya!, Hal itu diungkapkan Apri/Fadia seusai bertanding melawan wakil Thailand, Jongkolphan Kititharakul/Rawinda Prajongjai Olympics Sports Center Gymnasium, pada Rabu (6/9/2023). Dalam laga tersebut, runner up Kejuaraan Dunia Bulutangkis 2023 itu memang menang atas wakil Thailand usai melewati laga ketat 17-21, 21-12, 21-19. Namun, di sela-sela pertandingan tersebut, sempat ada momen yang akhirnya menyulut emosi Apriyani terutama di gim ketiga. Saat Kititharakul/Prajongjai mengejar di kedudukan 17-19, ada insiden wasit menilai shuttlecock mengenai wajah Apriyani, yang akhirnya berujung protes. Padahal, menurut Apriyani kejadiannya tidak demikian.\"Tadi memang tidak terkena saya shuttlecock-nya, dan jujur saya agak emosi, tapi saya coba hargai keputusan wasit.\" Fadia juga coba menenangkan karena masih ada poin yang harus dimainkan, saya akhirnya melupakan hal itu dan fokus lagi meraih kemenangan,\" kata Apriyani dalam kutipan cepat yang dikirim PBSI kepada pewarta.\"",
      "https://akcdn.detik.net.id/community/media/visual/2023/08/26/apriyani-rahayusiti-fadia-silva-ramadhanti-3.jpeg?w=700&q=90",
      "200",
      DateTime.now().subtract(const Duration(hours: 6)),
      "Sports",
    ),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
      "Kevin Sanjaya Duet dengan Rinov Rivaldy di Denmark Open 2023",
      "Mercy Raya",
      "BWF merilis daftar pemain yang akan tampil di Denmark Open 2023. Salah satu yang mengejutkan adalah Kevin Sanjaya Sukamuljo berduet dengan Rinov Rivaldy",
      "https://akcdn.detik.net.id/community/media/visual/2023/06/02/kevin-sanjaya-sukamuljo-marcus-fernaldi-gideon-1_169.jpeg?w=700&q=90",
      "200",
      DateTime.now().subtract(const Duration(hours: 6)),
      "Sports",
    ),
    NewsData(
      "FIBA World Cup 2023: AS Gagal ke Final, Disindir Badan Atletik Dunia",
      "Adhi Prasetya",
      "Amerika Serikat takluk dari Jerman di semifinal FIBA World Cup 2023. Kegagalan melangkah ke partai puncak itu mendapat sindiran Badan Atletik Dunia (World Athletics).",
      "https://akcdn.detik.net.id/community/media/visual/2023/09/09/amerika-serikat_169.jpeg?w=700&q=90",
      "200",
      DateTime.now().subtract(const Duration(hours: 6)),
      "Sports",
    ),
    NewsData(
        "Ester Nurumi Juara Lagi, Taufik Hidayat: Diamond nih, Tinggal Dipoles",
        "Kris Fathoni",
        "Gelar juara kembali diraih tunggal putri Indonesia Ester Nurumi Tri Wardoyo saat tampil di Medan, Sumatera Utara. Legenda badminton Taufik Hidayat pun memuji.",
        "https://akcdn.detik.net.id/community/media/visual/2023/09/10/ester-nurumi-tri-wardoyo_169.webp?w=700&q=90",
        "200",
        DateTime.now().subtract(const Duration(hours: 6)),
        "Sports"),
    NewsData(
      "Rahmat Erwin Abdullah Raih Emas dan Pecahkan Rekor Dunia",
      "Mercy Raya",
      "Lifter Indonesia Rahmat Erwin Abdullah sukses merebut medali emas sekaligus pecahkan rekor dunia di IWF World Championship 2023 Riyadh. Keberhasilan itu ia raih dari angkatan terbaik clean adan jerk.",
      "https://akcdn.detik.net.id/community/media/visual/2023/09/12/rahmat-erwin-abdullah.jpeg?w=700&q=90",
      "200",
      DateTime.now().subtract(const Duration(hours: 6)),
      "Sports",
    ),
    NewsData(
      "Keputusan Jitu di Detik Akhir Bikin Kiper Lazio Jebol Gawang Atletico",
      "Randy Prasatya",
      "Kiper Lazio, ivan Provedel, membuat kejutan dengan mencetak gol ke gawang Atletico Madrid. Dia menjelaskan yang terjadi di menit-menit akhir pertandingan. Dia menjelaskan situasi yang terjadi di menit-menit akhir pertandingan itu. Laga Lazio vs Atletico Madrid pada matchday 1 GrupE Liga Champions berlangsung di Stadio Olimpico, Rabu (20/9/2023) dini hari WIB. Kedua tim bermain imbang 1-1. Atletico memimpin sejak babak pertama lewat gol Pablo Barrios. Di saat laga seolah mau tuntas dengan kemenangan Atletico, Lazio mencetak gol detik-detik akhir.",
      "https://akcdn.detik.net.id/community/media/visual/2023/09/12/rahmat-erwin-abdullah.jpeg?w=700&q=90",
      "200",
      DateTime.now().subtract(const Duration(hours: 6)),
      "Sports",
    ),
  ];

  static List<NewsData> DiscoverNewsData = [
    NewsData(
      "Keputusan Jitu di Detik Akhir Bikin Kiper Lazio Jebol Gawang Atletico",
      "Randy Prasatya",
      "Kiper Lazio, ivan Provedel, membuat kejutan dengan mencetak gol ke gawang Atletico Madrid. Dia menjelaskan yang terjadi di menit-menit akhir pertandingan. Dia menjelaskan situasi yang terjadi di menit-menit akhir pertandingan itu. Laga Lazio vs Atletico Madrid pada matchday 1 GrupE Liga Champions berlangsung di Stadio Olimpico, Rabu (20/9/2023) dini hari WIB. Kedua tim bermain imbang 1-1. Atletico memimpin sejak babak pertama lewat gol Pablo Barrios. Di saat laga seolah mau tuntas dengan kemenangan Atletico, Lazio mencetak gol detik-detik akhir.",
      "https://akcdn.detik.net.id/community/media/visual/2023/09/12/rahmat-erwin-abdullah.jpeg?w=700&q=90",
      "200",
      DateTime.now().subtract(const Duration(hours: 6)),
      "Sports",
    ),
    NewsData(
      "FIBA World Cup 2023: AS Gagal ke Final, Disindir Badan Atletik Dunia",
      "Adhi Prasetya",
      "Amerika Serikat takluk dari Jerman di semifinal FIBA World Cup 2023. Kegagalan melangkah ke partai puncak itu mendapat sindiran Badan Atletik Dunia (World Athletics).",
      "https://akcdn.detik.net.id/community/media/visual/2023/09/09/amerika-serikat_169.jpeg?w=700&q=90",
      "200",
      DateTime.now().subtract(const Duration(hours: 6)),
      "Sports",
    ),

  ];
}
