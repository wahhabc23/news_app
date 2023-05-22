// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsAPIResp _$NewsAPIRespFromJson(Map<String, dynamic> json) => NewsAPIResp(
      status: json['status'] as String?,
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>?)
              ?.map((e) => ArticleData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$NewsAPIRespToJson(NewsAPIResp instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

ArticleData _$ArticleDataFromJson(Map<String, dynamic> json) => ArticleData(
      source: json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$ArticleDataToJson(ArticleData instance) =>
    <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
