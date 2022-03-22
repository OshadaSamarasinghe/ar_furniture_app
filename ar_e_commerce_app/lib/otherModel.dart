// ignore_for_file: file_names, camel_case_types
// ignore: unused_import

class other {
  final String name;
  final String model;
  final String shortDesc;
  final String image;
  final int rate;
  final int price;

  other(
      {required this.name,
      required this.model,
      required this.shortDesc,
      required this.image,
      required this.rate,
      required this.price});
}

List<other> list2 = [
  other(
      name: "Ivory Bed ",
      model: 'NBIV 004',
      shortDesc:
          "Passionate creation that emphasizes the sense of luxury living. King size bed with extended headboard that possess peaceful carvings and matching top rail accent to enrich your interior. Further comprises similar patterned bed side cupboards with chrome detailed handles for a fascinating feel ",
      image: "assets/Ivory.jpg",
      rate: 5,
      price: 200000),
  other(
      name: "Willow Dining Suite;",
      model: '(WTWL 002 | WCWL 001)',
      shortDesc:
          "Add colour to your bonding family gatherings with a brilliantly crafted 9 piece dining table set. The impeccable finish of the tabletop with pleasing triangular shaped legs will showcase absolute fascination.",
      image: "assets/Willow.jpg",
      rate: 4,
      price: 125000),
  other(
      name: "Cabinet",
      model: "KLC 007",
      shortDesc:
          "Wonderful development with elevated glass cupboards to showcase your finest articles in a neat arrangement. Melamine finished cupboards and drawers with a top shelf will house your best crockery collection.",
      image: "assets/cabinet.jpg",
      rate: 4,
      price: 60000),
  other(
      name: "Ivory 3 Door Wardrobe",
      model: " NWIV 001",
      shortDesc:
          "A white wonder created with finest materials that present elegance of detailed craftsmanship. Chrome touched handles further elaborates the beauty whereas big capacity shelves with a drawer and the hanging compartment will enhance convenience.",
      image: "assets/Ivory door.jpg",
      rate: 5,
      price: 133000),
];
