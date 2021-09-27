class Travel {
  String name;
  String location;
  String url;
  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog() {
    return [
      Travel('Place1', "place1", 'images/img1.png'),
      Travel('Place2', "place2", 'images/img2.png'),
      Travel('Place3', "place3", 'images/img3.png'),
    ];
  }
}
