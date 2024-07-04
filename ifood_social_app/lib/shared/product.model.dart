class Product {
  Product({
    this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.available,
    required this.categoryId,
    this.enterpriseId,
  });

  int? id;
  final String name;
  final String imageUrl;
  final double price;
  final bool available;
  final int categoryId;
  final int? enterpriseId;

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json['codigo'],
        name: json['descricao'],
        imageUrl: json['img_url'] is String ? json['img_url'] : '',
        price: double.parse(json['valor'].toString()),
        available: json['disponivel'] == 'S' ? true : false,
        categoryId: json['category_id'],
        enterpriseId: json['enterprise_id'],
      );

  Map<String, dynamic> toMap() => {
        'id': id ?? DateTime.now().millisecondsSinceEpoch,
        'name': name,
        'img_url': imageUrl,
        'price': price,
        'available': 'S',
        'category_id': categoryId,
        'enterprise_id': 1,
      }..removeWhere((key, value) => value == null);

  // factory Product.fromFirestore(DocumentSnapshot documentSnapshot) {
  //   var product = Product.fromMap(documentSnapshot.data() as Map<String, dynamic>);
  //   return product..id = documentSnapshot.id;
  // }
}
