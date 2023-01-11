import 'package:hack_the_tool/models/shortcut.dart';

class Software {
  final String image;
  final String name;
  final List<ShortcutModel> shortcutList;
  Software(
      {required this.image, required this.name, required this.shortcutList});

  factory Software.fromJson(Map<String, dynamic> json) => Software(
        image: json['image'],
        name: json['name'],
        shortcutList: (json['listOfShortcut'] as List)
            .map((e) => ShortcutModel.fromJson(e))
            .toList(),
      );

  Map<String, dynamic> toJson() =>
      {'image': image, 'name': name, 'listOfShortcut': shortcutList};
}
