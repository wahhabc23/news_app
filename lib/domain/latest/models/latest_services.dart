import 'package:dartz/dartz.dart';
import 'package:news_app/domain/core/failures/failures.dart';
import 'package:news_app/domain/latest/models/news_a_pi_resp/latest_resp.dart';

abstract class LatestServices {
  Future<Either<MainFailure, NewsAPIResp>> getLatestNews();
}
