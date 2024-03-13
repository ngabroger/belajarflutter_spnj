class RestaurantPlace {
  String name;
  String open;
  String description;
  String time;
  String address;
  String rating;
  String imgAsset;

  RestaurantPlace(
      {required this.name,
      required this.open,
      required this.description,
      required this.address,
      required this.time,
      required this.rating,
      required this.imgAsset});
}

var RestaurantPlaceList = [
  RestaurantPlace(
      name: 'Pecel Lele pak Broto',
      open: 'Everyday',
      description:
          'Pecel Lele pak Broto adalah tempat makan favorit yang terletak di Bogor. Menawarkan pecel lele yang gurih dengan cita rasa yang khas, tempat ini menjadi destinasi wajib bagi pecinta kuliner. Pecel Lele pak Broto buka setiap hari mulai pukul 19.00 hingga 00.00. Dengan rating 4.7, tempat ini menawarkan pengalaman kuliner yang memuaskan bagi pengunjungnya.',
      address: 'Bogor',
      time: '19.00-00.00',
      rating: '4.7',
      imgAsset: 'assets/images/broto.jpg'),
  RestaurantPlace(
      name: 'Sate Padang Ajo Ramon',
      open: 'Everyday',
      description:
          'Sate Padang Ajo Ramon adalah tempat makan yang terkenal dengan sate Padangnya yang lezat. Terletak di Jakarta, tempat ini menyajikan sate Padang dengan bumbu yang mantap dan cita rasa yang otentik. Dibuka setiap hari mulai pukul 17.00 hingga 22.00, tempat ini mendapat rating 4.8 dari pengunjungnya.',
      address: 'Jakarta',
      time: '17.00-22.00',
      rating: '4.8',
      imgAsset: 'assets/images/sate_padang.jpg'),
  RestaurantPlace(
      name: 'Nasi Goreng Mas Kumis',
      open: 'Everyday',
      description:
          'Nasi Goreng Mas Kumis adalah tempat makan favorit di Bandung yang terkenal dengan nasi gorengnya yang lezat. Dengan rasa khas dan harga yang terjangkau, tempat ini menjadi pilihan utama bagi pecinta nasi goreng. Dibuka setiap hari mulai pukul 18.00 hingga 01.00, tempat ini memiliki rating 4.5.',
      address: 'Bandung',
      time: '18.00-01.00',
      rating: '4.5',
      imgAsset: 'assets/images/nasi_goreng.jpg'),
  RestaurantPlace(
      name: 'Bakso Pak Kumis',
      open: 'Everyday',
      description:
          'Bakso Pak Kumis adalah tempat makan yang terkenal dengan bakso lezatnya di Surabaya. Bakso dengan kuah yang gurih dan cita rasa yang otentik, pasti akan membuat Anda ketagihan. Tempat ini buka setiap hari mulai pukul 11.00 hingga 20.00 dan mendapat rating 4.6.',
      address: 'Surabaya',
      time: '11.00-20.00',
      rating: '4.6',
      imgAsset: 'assets/images/bakso.jpg'),
  RestaurantPlace(
      name: 'Warung Makan Bu Yati',
      open: 'Everyday',
      description:
          'Warung Makan Bu Yati adalah tempat makan yang menyajikan masakan rumahan yang lezat di Yogyakarta. Dengan harga terjangkau, Anda dapat menikmati berbagai hidangan lezat di sini. Warung ini buka setiap hari mulai pukul 10.00 hingga 22.00 dan memiliki rating 4.4.',
      address: 'Yogyakarta',
      time: '10.00-22.00',
      rating: '4.4',
      imgAsset: 'assets/images/bu_yati.jpg'),
  RestaurantPlace(
      name: 'Gudeg Yu Djum',
      open: 'Everyday',
      description:
          'Gudeg Yu Djum adalah tempat makan yang terkenal dengan gudeg khas Jogja di Yogyakarta. Dengan cita rasa yang otentik, gudeg di tempat ini wajib dicoba bagi pecinta kuliner. Buka setiap hari mulai pukul 07.00 hingga 22.00, tempat ini mendapat rating 4.7.',
      address: 'Yogyakarta',
      time: '07.00-22.00',
      rating: '4.7',
      imgAsset: 'assets/images/gudeg.jpg'),
  RestaurantPlace(
      name: 'Nasi Campur Bu Tjondro',
      open: 'Everyday',
      description:
          'Nasi Campur Bu Tjondro adalah tempat makan yang terkenal dengan nasi campurnya yang lezat di Surakarta. Dengan berbagai pilihan lauk dan sambal yang nikmat, tempat ini menjadi favorit di kota ini. Buka setiap hari mulai pukul 09.00 hingga 21.00, tempat ini memiliki rating 4.6.',
      address: 'Surakarta',
      time: '09.00-21.00',
      rating: '4.6',
      imgAsset: 'assets/images/nasi_campur.jpg')
];
