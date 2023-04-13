import 'package:flutter/foundation.dart';
enum Complexity{
  Crowded, Intermediate,Remote
}
enum Affordability{
  Affordable,
  Pricey,
  Luxurious
}
class Meal{
    final String id;
    final List<String> categories;
    final List<String> contactInfo;
    final List<String> about;
    final String title;
    final String imageUrl;
    final int duration;
    final Complexity complexity;
    final Affordability affordability;
    final bool isHistorical;
    final bool isReligious;
    final bool isAmusement;
    final bool isEntertainment;
    const Meal({required this.id,required this.categories,required this.contactInfo,required this.about,required this.title,required this.imageUrl,required this.duration,required this.complexity,required this.affordability,required this.isHistorical,required this.isAmusement,required this.isEntertainment,required this.isReligious});
}