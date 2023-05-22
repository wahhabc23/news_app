import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/category/category_service.dart';
import 'package:news_app/domain/core/api_endpointd.dart';
import 'package:news_app/domain/core/failures/failures.dart';
import 'package:news_app/domain/latest/models/news_a_pi_resp/latest_resp.dart';

@LazySingleton(as: CategoryServices)
class CategoryFunctions implements CategoryServices {
  @override
  Future<Either<MainFailure, NewsAPIResp>> getCategory({required String category})async {
try {
      final Response response =
          await Dio(BaseOptions(queryParameters: {"category": category}))
              .get(ApiEndPoints.getCategory);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewsAPIResp.fromJson(response.data);
        log('search');
        log(result.articles.toString());
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