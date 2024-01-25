abstract class BaseEntity {
  BaseEntity();

  factory BaseEntity.fromJson(Type type, Map<String, dynamic> json) {
    switch (type) {
      case CategoryEntity:
        return CategoryEntity.fromJson(json);
      default:
        throw Exception('Invalid type');
    }
  }
}

class CategoryEntity extends BaseEntity {
  CategoryEntity();

  factory CategoryEntity.fromJson(Map<String, dynamic> json) {
    return CategoryEntity();
  }
}
