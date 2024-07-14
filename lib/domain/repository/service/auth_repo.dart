import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/auth/login_model/login_model.dart';
import 'package:myairdeal/domain/models/auth/otp_verify_model/otp_verify_model.dart';
import 'package:myairdeal/domain/models/auth/otp_verify_responce/otp_verify_responce.dart';
import 'package:myairdeal/domain/models/auth/profile_update_model/profile_update_model.dart';
import 'package:myairdeal/domain/models/auth/user_creation_model/user_creation_model.dart';
import 'package:myairdeal/domain/models/auth/user_creation_responce_model/user_creation_responce_model.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, SuccessResponceModel>> sendOTP({
    required LoginModel loginModel,
  });

  Future<Either<Failure, OtpVerifyResponce>> verifyOTP({
    required OtpVerifyModel otpVerifyModel,
  });

  Future<Either<Failure, SuccessResponceModel>> userCreation({
    required UserCreationModel userCreationModel,
  });

  Future<Either<Failure, UserCreationResponceModel>> getUser();
  Future<Either<Failure, SuccessResponceModel>> updateUser(
      {required ProfileUpdateModel profileUpdateModel});
}
