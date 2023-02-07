// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int,
      name: json['name'] as String,
      price: const StringDoubleConverter().fromJson(json['price'] as String),
      description: json['description'] as String?,
      available: json['available'] as bool,
      bookmarked: json['bookmarked'] as bool? ?? false,
      imageUrl: json['image_url'] as String,
      rating: const StringDoubleConverter().fromJson(json['rating'] as String),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': const StringDoubleConverter().toJson(instance.price),
      'description': instance.description,
      'available': instance.available,
      'bookmarked': instance.bookmarked,
      'image_url': instance.imageUrl,
      'rating': const StringDoubleConverter().toJson(instance.rating),
    };
