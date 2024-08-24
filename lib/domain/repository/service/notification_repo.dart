import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/notification_model/notification_model.dart';
import 'package:myairdeal/domain/models/page_query/page_query.dart';

abstract class NotificationRepo {
  Future<Either<Failure, NotificationModel>> getNotification(
      {required PageQuery pageQuery});
  Future<Either<Failure, NotificationModel>> getNotificationNext(
      {required PageQuery pageQuery});
}
