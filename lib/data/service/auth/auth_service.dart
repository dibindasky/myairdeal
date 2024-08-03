import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/auth/login_model/login_model.dart';
import 'package:myairdeal/domain/models/auth/otp_verify_model/otp_verify_model.dart';
import 'package:myairdeal/domain/models/auth/otp_verify_responce/otp_verify_responce.dart';
import 'package:myairdeal/domain/models/auth/profile_update_model/profile_update_model.dart';
import 'package:myairdeal/domain/models/auth/user_creation_model/user_creation_model.dart';
import 'package:myairdeal/domain/models/auth/user_creation_responce_model/user_creation_responce_model.dart';
import 'package:myairdeal/domain/models/splash_model/splash_model.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';
import 'package:myairdeal/domain/repository/service/auth_repo.dart';

class AuthService extends AuthRepo {
  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, SplashModel>> getSplash() async {
    try {
      final responce = await apiService.get(ApiEndPoints.getSplash);
      log('Success getSplash');
      return Right(SplashModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException getSplash $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch getSplash $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> sendSMS(
      {required LoginModel loginModel}) async {
    try {
      log('OTP data ${loginModel.country?.toJson()}');
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
  Future<Either<Failure, OtpVerifyResponce>> verifyOTP({
    required OtpVerifyModel otpVerifyModel,
  }) async {
    try {
      final responce = await apiService.post(
        ApiEndPoints.verifyOTP,
        data: otpVerifyModel.toJson(),
      );
      log('Success verifyOTP ${responce.data}');
      return Right(OtpVerifyResponce.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException verifyOTP $e');
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      log('catch verifyOTP $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> userCreation(
      {required UserCreationModel userCreationModel}) async {
    try {
      final responce = await apiService.put(
        ApiEndPoints.addUserDetails,
        data: userCreationModel.toJson(),
      );
      log('Success userCreation');
      return Right(SuccessResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException userCreation $e');
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      log('catch userCreation $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserCreationResponceModel>> getUser() async {
    try {
      final responce = await apiService.get(
        ApiEndPoints.getprofile,
      );
      log('getUser');
      return Right(UserCreationResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException getUser $e');
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      log('catch getUser $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> updateUser({
    required ProfileUpdateModel profileUpdateModel,
  }) async {
    try {
      await apiService.put(
        ApiEndPoints.getprofile,
        data: profileUpdateModel.toJson(),
      );
      log('Success updateUser');
      return Right(SuccessResponceModel());
    } on DioException catch (e) {
      log('DioException updateUser $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch updateUser $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
