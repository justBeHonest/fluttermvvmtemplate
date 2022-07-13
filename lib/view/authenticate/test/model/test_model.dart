// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import '../../../../core/base/model/base_model.dart';

part 'test_model.g.dart';

@JsonSerializable()
class TestModel extends BaseModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TestModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  @override
  fromJson(Map<String, dynamic> json) {
    return _$TestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TestModelToJson(this);
  }
}
