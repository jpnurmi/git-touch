import 'package:json_annotation/json_annotation.dart';

part 'gitee.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeUser {
  String login;
  String avatarUrl;
  String name;
  String htmlUrl;
  String bio;
  String blog;
  int publicRepos;
  int followers;
  int following;
  int stared;
  int watched;
  DateTime createdAt;
  GiteeUser();
  factory GiteeUser.fromJson(Map<String, dynamic> json) =>
      _$GiteeUserFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeListUser {
  String login;
  String avatarUrl;
  String name;
  String htmlUrl;
  GiteeListUser();
  factory GiteeListUser.fromJson(Map<String, dynamic> json) =>
      _$GiteeListUserFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeRepo {
  GiteeRepoNamespace namespace;
  GiteeRepoOwner owner;
  String path;
  String description;
  bool private;
  bool public;
  bool internal;
  bool fork;
  int forksCount;
  int stargazersCount;
  int watchersCount;
  DateTime updatedAt;
  String license;
  String homepage;
  int openIssuesCount;
  bool pullRequestsEnabled;
  String defaultBranch;
  GiteeRepo();
  factory GiteeRepo.fromJson(Map<String, dynamic> json) =>
      _$GiteeRepoFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeRepoOwner {
  String login;
  String avatarUrl;
  GiteeRepoOwner();
  factory GiteeRepoOwner.fromJson(Map<String, dynamic> json) =>
      _$GiteeRepoOwnerFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeRepoNamespace {
  String path;
  GiteeRepoNamespace();
  factory GiteeRepoNamespace.fromJson(Map<String, dynamic> json) =>
      _$GiteeRepoNamespaceFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeCommit {
  GiteeUser author;
  GiteeCommitDetail commit;
  String sha;
  String htmlUrl;
  GiteeCommit();
  factory GiteeCommit.fromJson(Map<String, dynamic> json) =>
      _$GiteeCommitFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeCommitDetail {
  String message;
  GiteeCommitAuthor author;
  GiteeCommitAuthor committer;
  GiteeCommitDetail();
  factory GiteeCommitDetail.fromJson(Map<String, dynamic> json) =>
      _$GiteeCommitDetailFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeCommitAuthor {
  String name;
  String email;
  DateTime date;
  GiteeCommitAuthor();
  factory GiteeCommitAuthor.fromJson(Map<String, dynamic> json) =>
      _$GiteeCommitAuthorFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeTreeItem {
  String path;
  String type;
  String sha;
  int size;
  GiteeTreeItem();
  factory GiteeTreeItem.fromJson(Map<String, dynamic> json) =>
      _$GiteeTreeItemFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GiteeBlob {
  String content;
  GiteeBlob();
  factory GiteeBlob.fromJson(Map<String, dynamic> json) =>
      _$GiteeBlobFromJson(json);
}
