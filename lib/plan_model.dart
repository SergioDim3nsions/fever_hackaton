class PlanModel {
  final String id;
  final String image;
  final String name;
  final String url;

  PlanModel({
    required this.id,
    required this.image,
    required this.name,
    this.url = "",
  });
}
