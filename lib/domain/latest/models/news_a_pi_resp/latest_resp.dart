import 'package:json_annotation/json_annotation.dart';
part 'latest_resp.g.dart';

@JsonSerializable()
class NewsAPIResp {
  String? status;
  int? totalResults;
  List<ArticleData> articles;

  NewsAPIResp({this.status, this.totalResults, this.articles = const []});

  factory NewsAPIResp.fromJson(Map<String, dynamic> json) {
    return _$NewsAPIRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewsAPIRespToJson(this);
}

@JsonSerializable()
class ArticleData {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ArticleData({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory ArticleData.fromJson(Map<String, dynamic> json) {
    return _$ArticleDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArticleDataToJson(this);
}

@JsonSerializable()
class Source {
  String? id;
  String? name;

  Source({this.id, this.name});

  factory Source.fromJson(Map<String, dynamic> json) {
    return _$SourceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
