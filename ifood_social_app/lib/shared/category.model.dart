class Category {
  Category({
    this.id,
    required this.name,
    required this.imageUrl,
  });

  int? id;
  final String name;
  final String? imageUrl;

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json['id'],
        name: json['name'],
        imageUrl: json['image_url'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'image_url': imageUrl,
      };
}
