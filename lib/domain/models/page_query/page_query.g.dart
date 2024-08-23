// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageQuery _$PageQueryFromJson(Map<String, dynamic> json) => PageQuery(
      pageSize: json['pageSize'] as int?,
      search: json['search'] as String?,
    );

Map<String, dynamic> _$PageQueryToJson(PageQuery instance) => <String, dynamic>{
      'pageSize': instance.pageSize,
      'search': instance.search,
    };
