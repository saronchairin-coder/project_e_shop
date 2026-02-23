
class Category{
  int id;
  String name;
  String description;

  Category({
    required this.id,
    required this.name,
    required this.description,
});

  factory Category.fromJson(Map<String , dynamic> json) {
    return Category(
      id:  json['id'] ?? 0,
      name:  json['name'] ?? "",
      description:  json['description']?? "",
    );
  }
}