import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/core/api_endpointd.dart';
import 'package:news_app/domain/core/failures/failures.dart';
import 'package:news_app/domain/latest/models/latest_services.dart';
import 'package:news_app/domain/latest/models/news_a_pi_resp/latest_resp.dart';

@LazySingleton(as: LatestServices)
class LatestRepository implements LatestServices {
  @override
  Future<Either<MainFailure, NewsAPIResp>> getLatestNews() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.latest);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewsAPIResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      // log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
