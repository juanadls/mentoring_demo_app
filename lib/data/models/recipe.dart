class Recipe {
  final String? uri;
  final String? label;
  final String? image;

  Recipe({
    this.uri,
    this.label,
    this.image,
  });

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
      uri: json["uri"] as String,
      label: json["label"] as String,
      image: json["image"] as String,
    );
  }


  static List<Recipe> fromRecipes (List fromRecipes){
    return fromRecipes.map((data){
      return Recipe.fromJson(data);
       }).toList();
    }
  }

