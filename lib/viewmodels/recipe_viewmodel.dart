import 'dart:convert';
import 'package:recipeapp/models/recipe.dart';
import 'package:flutter/services.dart' show rootBundle;

class RecipeViewModel {
  static List<Recipe> recipes = new List<Recipe>();
  static Recipe selected = new Recipe(); 

  static Future load() async{
    List jsonParsed = json.decode(await getRecipes());
    recipes = jsonParsed.map((i) => new Recipe.fromJson(i)).toList();
    selected = recipes[0];
  }

  static Future<String> getRecipes() async {
    return await rootBundle.loadString('assets/recipes.json');
  }
}