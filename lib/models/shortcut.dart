class ShortcutModel {
  final String shortcut;
  final String? shortcutResult;

  ShortcutModel({required this.shortcut, required this.shortcutResult});

  factory ShortcutModel.fromJson(Map<String, dynamic> json) => ShortcutModel(
        shortcut: json['shortcut'],
        shortcutResult: json['shortcutResult'],
      );

  Map<String, dynamic> toJson() => {
        'shortcut': shortcut,
        'shortcutResult': shortcutResult,
      };
}
