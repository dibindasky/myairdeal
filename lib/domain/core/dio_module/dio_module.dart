import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dioInstance => Dio(BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
      ));
}
