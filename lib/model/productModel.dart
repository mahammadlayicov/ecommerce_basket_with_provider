class Product {
  int? id;
  String? imagePath;
  double? price;
  int? discountPercent;
  String? title;
  Product(
      {this.id, this.imagePath, this.price, this.discountPercent, this.title});
}

List<Product> products = [
  Product(
    id: 1,
    imagePath:
        'https://umico.az/_ipx/_/https://strgimgr.umico.az/sized/840/686342-4fd50d875265b11ed92201c0fd9fc6a0.jpg',
    price: 325.00,
    discountPercent: 10,
    title: 'Smartfon Xiaomi Redmi 13C 8GB/256GB Midnight Black (6941812757130)',
  ),
  Product(
    id: 2,
    imagePath:
        'https://strgimgr.umico.az/sized/840/510256-f541935ae898515be8ea4ccbb4820254.jpg',
    price: 229.00,
    discountPercent: 5,
    title: 'Televizor Zimmer ZM-UTVSH3245 (4780068450219)',
  ),
  Product(
    id: 3,
    imagePath:
        'https://umico.az/_ipx/_/https://strgimgr.umico.az/sized/840/314886-8d38f3676efd08011c3f4624aea3fe46.jpg',
    price: 500.00,
    discountPercent: 10,
    title: 'Kondisioner Gree GWH24AADXE-K3NNA2A/I',
  ),
  Product(
    id: 4,
    imagePath:
        'https://umico.az/_ipx/_/https://strgimgr.umico.az/sized/840/528278-912d505171c7b9a4ef5d44ee0f40e5a8.jpg',
    price: 300.00,
    discountPercent: 5,
    title: 'Tozsoran Panasonic MC-CG713W149',
  ),
  Product(
    id: 5,
    imagePath:
        'https://umico.az/_ipx/_/https://strgimgr.umico.az/sized/840/565851-77d645c419df1b937d53c3f8241be1dd.jpg',
    price: 450.00,
    discountPercent: 10,
    title: 'Simsiz qulaqlıq Apple AirPods 3 White (MME73)',
  ),
  Product(
    id: 6,
    imagePath:
        'https://umico.az/_ipx/_/https://strgimgr.umico.az/sized/840/230885-976f73d0271be71c8e6ff1a2258037ba.jpg',
    price: 90.00,
    discountPercent: 20,
    title: 'Bentley Momentum Unlimited kişilər üçün tualet suyu 100 ml',
  ),
];
