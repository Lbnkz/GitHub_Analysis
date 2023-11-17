class Api {
  String? login;
  String? avatarUrl;
  String? name;
  int? publicRepos;
  int? followers;
  int? following;

  Api(
      {this.login,
      this.avatarUrl,
      this.name,
      this.publicRepos,
      this.followers,
      this.following});

  Api.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    avatarUrl = json['avatar_url'];
    name = json['name'];
    publicRepos = json['public_repos'];
    followers = json['followers'];
    following = json['following'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['login'] = login;
    data['avatar_url'] = avatarUrl;
    data['name'] = name;
    data['public_repos'] = publicRepos;
    data['followers'] = followers;
    data['following'] = following;
    return data;
  }
}

