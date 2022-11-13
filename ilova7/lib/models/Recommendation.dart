class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "School",
    source: "No. 64",
    text: "I study in the 8th grade at school No. 64"
  ),
  Recommendation(
    name: "Training Center",
    source: "Creative school",
    text: "I learned the Flutter framework and the Dart programming language at Creative School"
  ),
];