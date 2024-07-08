import 'package:json_annotation/json_annotation.dart';

part 'review_price_detail_id_model.g.dart';

@JsonSerializable()
class ReviewPriceDetailIdModel {
  List<String>? priceIds;

  ReviewPriceDetailIdModel({this.priceIds});

  factory ReviewPriceDetailIdModel.fromJson(Map<String, dynamic> json) {
    return _$ReviewPriceDetailIdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReviewPriceDetailIdModelToJson(this);

  ReviewPriceDetailIdModel copyWith({
    List<String>? priceIds,
  }) {
    return ReviewPriceDetailIdModel(
      priceIds: priceIds ?? this.priceIds,
    );
  }
}
