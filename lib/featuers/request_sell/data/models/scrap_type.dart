class ScrapType {
  final String title;
  final String image;
  final bool isSelected;

  ScrapType({
    required this.title,
    required this.image,
    this.isSelected = false,
  });

  ScrapType copyWith({bool? isSelected}) {
    return ScrapType(
      title: title,
      image: image,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
