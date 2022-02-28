class Paint {
  String name;
  String imageUrl;
  Paint(this.name, this.imageUrl);

  static List<Paint> generateRecommended() {
    return [
      Paint('The Moon House', 'assets/images/paint01.jpeg'),
      Paint('The Moon House', 'assets/images/paint02.jpeg'),
    ];
  }

  static List<Paint> genrateBestOffer() {
    return [
      Paint('The Moon House', 'assets/images/offer01.jpeg'),
      Paint('The Moon House', 'assets/images/offer02.jpeg'),
    ];
  }
}
