class Recipe {
  final String uri;
  final String label;
  final String image;

  Recipe({
    required this.uri,
    required this.label,
    required this.image,
  });

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
      uri: json["uri"],
      label: json["label"],
      image: json["image"],
    );
  }

  dynamic toJson() {
    return {"uri": uri, "label": label, "image": image};
  }
}
