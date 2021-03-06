class PlaceModel {
  final String name;
  final String location;
  final String url;
  final int price;
  final double rating;

  PlaceModel(
      {required this.name,
      required this.location,
      required this.url,
      required this.price,
      required this.rating});
}

List<PlaceModel> mockPlace = [
  PlaceModel(
      name: "Batu Kuda Manglayang Ciburu",
      location: "Cibiru Wetan, Bandung",
      url:
          "https://cdn-2.tstatic.net/travel/foto/bank/images/objek-wisata-batu-kuda.jpg",
      price: 100000,
      rating: 5.0),
  PlaceModel(
      name: "Kampung Bamboo Bandung",
      location: "Kampung Bamboo",
      url:
          "https://tempatwisatadibandung.info/wp-content/uploads/2016/09/Kampung-bamboo-bandung.jpg",
      price: 230000,
      rating: 4.4),
  PlaceModel(
      name: "Citere Camping Ground",
      location: "CPangalengan, Bandung",
      url:
          "https://tempatwisatadibandung.info/wp-content/uploads/2020/09/Citere-Camping-Ground-Situ-Cileunca-Pangalengan-Bandung-Selatan.jpg",
      price: 750000,
      rating: 3.3),
  PlaceModel(
      name: "Pine Forest Camp Ground",
      location: "Lembang, Bandung",
      url:
          "https://www.hargatiket.net/wp-content/uploads/2019/11/Pine-Forest-Camp.jpg",
      price: 325000,
      rating: 4.8),
  PlaceModel(
      name: "Rancaupas Campground",
      location: "Rancabali, Bandung",
      url:
          "https://tempatwisatadibandung.info/wp-content/uploads/2015/03/Kampung-Cai-Ranca-Upas-500x332.jpg",
      price: 200000,
      rating: 1.4),
  PlaceModel(
      name: "Turangga Outdoor Camp",
      location: "Parongpong, Bandung",
      url:
          "https://www.jejakpiknik.com/wp-content/uploads/2018/07/ciwangunindahcamp5-630x380.jpg",
      price: 100000,
      rating: 3.9),
];
