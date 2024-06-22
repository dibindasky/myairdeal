import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/auth/login_model/login_model.dart';
import 'package:myairdeal/domain/models/auth/otp_verify_model/otp_verify_model.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';
import 'package:myairdeal/domain/models/token/token_model.dart';
import 'package:myairdeal/domain/repository/service/auth_repo.dart';

class AuthService extends AuthRepo {
  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, SuccessResponceModel>> sendOTP(
      {required LoginModel loginModel}) async {
    try {
      log('${loginModel.toJson()}');
      final responce = await apiService.post(
        ApiEndPoints.sendOTP,
        data: loginModel.toJson(),
      );
      log('Success sendOTP');
      return Right(SuccessResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException sendOTP $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch sendOTP $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TokenModel>> verifyOTP({
    required OtpVerifyModel otpVerifyModel,
  }) async {
    try {
      log('${otpVerifyModel.toJson()}');
      final responce = await apiService.post(
        ApiEndPoints.verifyOTP,
        data: otpVerifyModel.toJson(),
      );
      log('Success verifyOTP');
      return Right(TokenModel(token: responce.data['token'] as String));
    } on DioException catch (e) {
      log('DioException verifyOTP $e');
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      log('catch verifyOTP $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
