class Travel {
  String name;
  String location;
  String url;
  Travel(this.name, this.location, this.url);

  static List<Travel> getTravelHeader() {
    return [
      Travel('Place1', "place1", 'assets/images/top1.jpg'),
      Travel('Place2', "place2", 'assets/images/top2.jpg'),
      Travel('Place3', "place3", 'assets/images/top3.jpg'),
      Travel('Place3', "place3", 'assets/images/top4.jpg'),
    ];
  }

  static List<Travel> getTravelBlog() {
    return [
      Travel('Place1', "place1", 'assets/images/blog1.jpg'),
      Travel('Place2', "place2", 'assets/images/blog2.jpg'),
      Travel('Place3', "place3", 'assets/images/blog3.jpg'),
      Travel('Place3', "place3", 'assets/images/blog4.jpg'),
    ];
  }
}
