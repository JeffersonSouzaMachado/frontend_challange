class RepositoryModel {
  final String name;
  final String user;
  final String avatar;
  final String fullName;
  // final String description;
  final String starred;
  final String repos;

  RepositoryModel({
    required this.name,
    required this.user,
    required this.avatar,
    required this.fullName,
    //  required this.description,
    required this.repos,
    required this.starred,
  });

  factory RepositoryModel.fromMap(Map<String, dynamic> map) {
    return RepositoryModel(
      name: map['full_name'],
      user: map['owner']['login'],
      avatar: map['owner']['avatar_url'],
      fullName: map['full_name'],
      // description: map['description'],
      repos: map['owner']['repos_url'],
      starred: map['owner']['starred_url'],
    );
  }
}
