enum CategoriesEnum {
  simplification,
  partsOfSpeech,
  syntax,
  punctuation,
}

extension CategoriesEnumExtension on CategoriesEnum {
  String get value {
    switch (this) {
      case CategoriesEnum.simplification:
        return 'Спрощення';
      case CategoriesEnum.partsOfSpeech:
        return 'Частини мови';
      case CategoriesEnum.syntax:
        return 'Синтаксис';
      case CategoriesEnum.punctuation:
        return 'Пунктуацiя';
    }
  }
}
