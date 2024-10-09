import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/providers/meals_provider.dart';
import 'package:meals_app/screens/meal_details.dart';

/// Represents a drawer menu that appears when side menu button is pressed
class MainDrawer extends StatelessWidget {
  const MainDrawer(
      {super.key, required this.onSelectedScreen, required this.meals});

  final void Function(String identifier) onSelectedScreen;
  final List<Meal> meals;

  void _selectRandomMeal(BuildContext context) {
    if (meals.isNotEmpty) {
      final random = Random();
      final randomMeal = meals[random.nextInt(meals.length)];

      // Navigate to MealDetailsScreen using the random meal
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => MealDetailsScreen(
            meal: randomMeal,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 18),
                Text(
                  "Cooking up!",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            title: Text(
              "Meals",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              onSelectedScreen("meals");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            title: Text(
              "Filters",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              onSelectedScreen("filters");
            },
          ),
          ListTile(
            leading: Text(
              '🎲',
              style: TextStyle(fontSize: 24.0),
            ),
            title: Text(
              "Try your luck",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              _selectRandomMeal(context);
            },
          ),
        ],
      ),
    );
  }
}
