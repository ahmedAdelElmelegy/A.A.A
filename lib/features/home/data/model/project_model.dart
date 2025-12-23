class ProjectModel {
  final String projectName;
  final String projectDescription;
  final String projectImage;
  final List<String> technologies;
  final List<String> features;
  final List<String> smImages;
  final String githupLink;
  final String applink;

  ProjectModel({
    required this.projectName,
    required this.projectDescription,
    required this.projectImage,
    this.technologies = const [],
    this.features = const [],
    this.smImages = const [],
    this.githupLink = '',
    this.applink = '',
  });
}
