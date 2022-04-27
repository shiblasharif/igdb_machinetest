class Cover {
  final String url;

  Cover({required this.url});

  factory Cover.fromJson(Map<String, dynamic> json) {
    return Cover(
      url: json['url'],
    );
  }
}
