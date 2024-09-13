import 'dart:convert';

List<Model> modelFromJson(String data) => List<Model>.from(json.decode(data).map((e) => Model.fromJson(e)));

class Model {
  String? title;
  String? body;

  Model({
    required this.title,
    required this.body,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      title: json['title'],
      body: json['body'],
    );
  }
}
