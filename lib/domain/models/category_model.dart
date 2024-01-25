import 'package:instrument_store/domain/entities/category_entity.dart';

import 'bases/base_model.dart';

class CategoryModel extends BaseModel {
  final int id;
  final String name;
  const CategoryModel({
    required this.id,
    required this.name,
  });

  factory CategoryModel.fromEntity(CategoryEntity entity) {
    return const CategoryModel(id: 0, name: '');
  }

  static List<CategoryModel> mockData() {
    return [
      const CategoryModel(id: 1, name: 'Guitar'),
      const CategoryModel(id: 2, name: 'Drum'),
      const CategoryModel(id: 4, name: 'Violin'),
      const CategoryModel(id: 5, name: 'Saxophone'),
    ];
  }

  String get image {
    switch (name.toLowerCase()) {
      case 'guitar':
        return 'assets/images/guitar.png';
      case 'drum':
        return 'assets/images/drum.png';
      case 'violin':
        return 'assets/images/violin.png';
      case 'saxophone':
        return 'assets/images/saxophone.png';
      default:
        return '';
    }
  }
}
