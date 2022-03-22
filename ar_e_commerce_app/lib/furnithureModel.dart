// ignore_for_file: file_names, camel_case_types
// ignore: unused_import

class furniture {
  final String name;
  final String model;
  final String shortDesc;
  final String image;
  final int rate;
  final int price;

  furniture(
      {required this.name,
      required this.model,
      required this.shortDesc,
      required this.image,
      required this.rate,
      required this.price});
}

List<furniture> menu = [
  furniture(
      name: "Boxberg sofa",
      model: 'Marino plush',
      shortDesc: "material is fabric. ",
      image: "assets/sofa.jpg",
      rate: 5,
      price: 169000),
  furniture(
      name: "Haily Sofa",
      model: "",
      shortDesc:
          "Perfectly tailored curvy lines of the sofa brings out a vibrant appeal to your existing interior. Attractively stuffed cushioning with super soft arms accompanied by two recliners will lead to irresistible comfort.",
      image: "assets/Helli-Sofa.jpg",
      rate: 4,
      price: 196900),
  furniture(
      name: "Monaco Sofa",
      model: "",
      shortDesc:
          "Best selection for those who look for charming yet professional appearance. The uniform creation of the pillows and cushions with diamond quilted outer frame along with clean piping outline highlights a peaceful presentation.",
      image: "assets/sofa2.jpg",
      rate: 4,
      price: 111500),
  furniture(
      name: "Florac Sectional Sofa",
      model: 'WFL-FLORAC-02-S',
      shortDesc:
          "Pure simplicity is achieved through the creation of Wendy sofa. The consistently crafted cushion pattern with soft to touch back pillows and the similarly upholstered sturdy frame will lead to lasting stylishness.",
      image: "assets/florac.jpg",
      rate: 3,
      price: 155000),
];
