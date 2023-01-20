import 'package:hack_the_tool/models/shortcut.dart';

class Software {
  final String image;
  final String name;
  final String? macOs;
  final String? windows;
  final String? linux;
  final String? intro;
  final String? officialLink;
  final String? subscription;
  final List<ShortcutModel> shortcutList;
  Software({
    required this.image,
    required this.name,
    required this.shortcutList,
    required this.macOs,
    required this.windows,
    required this.linux,
    required this.intro,
    required this.officialLink,
    required this.subscription,
  });

  factory Software.fromJson(Map<String, dynamic> json) => Software(
        image: json['image'],
        name: json['name'],
        macOs: json['macOs'],
        windows: json['windows'],
        linux: json['linux'],
        intro: json['intro'],
        officialLink: json['officialLink'],
        subscription: json['subscription'],
        shortcutList: (json['listOfShortcut'] as List)
            .map((e) => ShortcutModel.fromJson(e))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'image': image,
        'name': name,
        'macOs': macOs,
        'windows': windows,
        'linux': linux,
        'intro': intro,
        'officialLink': officialLink,
        'subscription': subscription,
        'listOfShortcut': shortcutList
      };
}
