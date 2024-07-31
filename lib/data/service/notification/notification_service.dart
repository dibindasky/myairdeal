import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/notification_model/notification_model.dart';
import 'package:myairdeal/domain/models/page_query/page_query.dart';
import 'package:myairdeal/domain/repository/service/notification_repo.dart';

class NotificationService extends NotificationRepo {
  ApiService apiService = ApiService();
  @override
  Future<Either<Failure, NotificationModel>> getNotification() async {
    try {
      final responce = await apiService.get(ApiEndPoints.getNotification);
      return Right(NotificationModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException getNotification $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch getNotification $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, NotificationModel>> getNotificationNext(
      {required PageQuery pageQuery}) async {
    try {
      final responce = await apiService.get(ApiEndPoints.getNotification,
          queryParameters: pageQuery.toJson());
      return Right(NotificationModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException getNotificationNext $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch getNotificationNext $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
