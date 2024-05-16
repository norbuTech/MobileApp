class TravelPlaceCardModel {
  String img;
  String title;
  String location;

  TravelPlaceCardModel(
      {required this.img,required this.title,required this.location});
}


List<TravelPlaceCardModel> travelList = [
    TravelPlaceCardModel(
        img: "https://media.istockphoto.com/id/537283130/photo/himalayan-kingdom-of-bhutan.jpg?s=1024x1024&w=is&k=20&c=HeY1pdvZVw2OVKS01LuctxqFDPMD19DDCaZEyW0V3h4=",
        location: "Paro Dzong", title: "Paro"),
    TravelPlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2016/07/27/19/44/bhutan-1546093_1280.jpg",
        location: "Thimphu Dzong", title: "Thimphu"),
    TravelPlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2017/09/07/13/21/palace-2725141_1280.jpg",
        location: "Punakha Dzong", title: "Phunakha"),
  ];