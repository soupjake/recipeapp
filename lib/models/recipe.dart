class Recipe {
  final int id;
  final String title;
  final String description;
  final bool vegetarian;
  final bool vegan;
  final bool glutenFree;
  final bool dairyFree;
  final int servings;
  final String sourceUrl;
  final int likes;
  final int readyInMinutes;
  final String image;
  final List<String> ingredients;
  final List<String> instructions;
  
  Recipe({this.id, this.title, this.description, this.vegetarian, this.vegan, this.glutenFree, this.dairyFree, this.servings, this.sourceUrl, this.likes, this.readyInMinutes, this.image, this.ingredients, this.instructions});

  factory Recipe.fromJson(Map<String, dynamic> json){
    var ingredientsJson = json['ingredients'];
    var instructionsJson = json['instructions'];

    return Recipe(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      vegetarian: json['vegetarian'],
      vegan: json['vegan'],
      glutenFree: json['glutenFree'],
      dairyFree: json['dairyFree'],
      servings: json['servings'],
      sourceUrl: json['sourceUrl'],
      likes: json['likes'],
      readyInMinutes: json['readyInMinutes'],
      image: json['image'],
      ingredients: ingredientsJson.cast<String>(),
      instructions: instructionsJson.cast<String>()
    );
  }
}