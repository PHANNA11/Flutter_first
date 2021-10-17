class VillaModel {
  late final String name;
  late final String location;
  late final String image;
  late final String duretion;
  late final double price;
  VillaModel(
      {required this.name,
      required this.location,
      required this.image,
      required this.price,
      required this.duretion});
  static List<VillaModel> villaModelList() {
    return [
      VillaModel(
          name: 'Twin Villa',
          location: 'Phnom Penh',
          image:
              'https://booyoungkhmer.com.kh/wp-content/uploads/2020/07/Twin-Villa-2-1024x650.jpg',
          price: 2000,
          duretion: 'a month'),
      VillaModel(
          name: 'King Villa',
          location: 'Phnom Penh',
          image:
              'https://booyoungkhmer.com.kh/wp-content/uploads/2020/07/King-Villa-2-1024x650.jpg',
          price: 1890,
          duretion: 'A month'),
      VillaModel(
          name: 'BOREY LIM CHHEANGHAK',
          location: 'ចំការដូង',
          image:
              'http://boreylimchheanghak.com/wp-content/uploads/2020/04/Twin-Villa-V.I-.jpg',
          price: 2000,
          duretion: 'a month'),
      VillaModel(
          name: 'Borey Smbath Meanheng III',
          location: 'ទីក្រុងប៉ៃតង',
          image: 'http://www.boreysmh.com/files/projects/th/1_01.jpg',
          price: 2100,
          duretion: 'a mont'),
    ];
  }
}
