class Travel {
  String name;
  String location;
  String url;
  Travel(this.name, this.location, this.url);

  List<Travel> generateTravelBlog() {
    return [
      Travel('Place1', "place1", url),
    ];
  }
}
