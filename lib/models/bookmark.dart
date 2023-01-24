class Bookmark {
  final String shortcut;
  final String? shortcutResult;
  final String? softwareName;

  Bookmark(
      {required this.softwareName,
      required this.shortcut,
      required this.shortcutResult});

  factory Bookmark.fromJson(Map<String, dynamic> json) => Bookmark(
        shortcut: json['shortcut'],
        shortcutResult: json['shortcutResult'],
        softwareName: json['software'],
      );

  Map<String, dynamic> toJson() => {
        'software': softwareName,
        'shortcut': shortcut,
        'shortcutResult': shortcutResult,
      };
}
