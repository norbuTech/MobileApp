class PlaceCardModel {
  String img;
  String title;
  String description;

  PlaceCardModel(
      {required this.img, required this.description, required this.title});
}


List<PlaceCardModel> placesList = [
    PlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2015/07/22/07/27/bhutan-854933_1280.jpg",
        description: "Paro Dzong", title: "Paro"),
    PlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2016/07/27/19/44/bhutan-1546093_1280.jpg",
        description: "Thimphu Dzong", title: "Thimphu"),
    PlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2017/09/07/13/21/palace-2725141_1280.jpg",
        description: "Punakha Dzong", title: "Phunakha"),
  ];