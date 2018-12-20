import 'package:flutter/material.dart';
import 'package:recipeapp/app.dart';
import 'package:recipeapp/viewmodels/recipe_viewmodel.dart';

void main() async {
  await RecipeViewModel.load();
  runApp(RecipeApp());
}