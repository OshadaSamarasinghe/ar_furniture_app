// ignore_for_file: file_names, camel_case_types
// ignore: unused_import

class chair {
  final String name;
  final String model;
  final String shortDesc;
  final String image;
  final int rate;
  final int price;

  chair(
      {required this.name,
      required this.model,
      required this.shortDesc,
      required this.image,
      required this.rate,
      required this.price});
}

List<chair> list = [
  chair(
      name: "Office chair",
      model: 'OCH 052',
      shortDesc:
          "A high back executive chair crafted using meticulously selected genuine leather to embrace a grand impression. The button tufted design with mirror finished wooden base and arm trims will ensure world class luxuriousness. ",
      image: "assets/officechair.jpg",
      rate: 5,
      price: 121275),
  chair(
      name: "Barrel chair;",
      model: 'Turbosquid 1781327',
      shortDesc:
          "clean and sophisticaled! This barrel chair from modway, subtle channel tufting contributing a touch of a classic elegance. The upholstery is 100% polyster, easy to clean for lasting appeal",
      image: "assets/chair.jpg",
      rate: 5,
      price: 25000),
  chair(
      name: "Aston Low Back Chair",
      model: "SAO 001",
      shortDesc:
          "Handle your work load better with the cooling comfort of a mesh fabric chair design. A sufficiently cushioned seat with enhanced back support and wrapped armrests will add great satisfaction.",
      image: "assets/ashton.jpg",
      rate: 4,
      price: 29000),
];
