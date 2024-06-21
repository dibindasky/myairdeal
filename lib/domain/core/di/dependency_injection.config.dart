// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:myairdeal/application/controller/auth/auth_controller.dart'
    as _i4;
import 'package:myairdeal/data/service/api_service.dart' as _i5;
import 'package:myairdeal/data/service/auth/auth_service.dart' as _i7;
import 'package:myairdeal/domain/core/dio_module/dio_module.dart' as _i8;
import 'package:myairdeal/domain/repository/service/auth.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i3.Dio>(() => dioModule.dioInstance);
    gh.factory<_i4.AuthController>(() => _i4.AuthController(gh<InvalidType>()));
    gh.factory<_i5.ApiService>(() => _i5.ApiService(gh<_i3.Dio>()));
    gh.lazySingleton<_i6.AuthRepo>(() => _i7.AuthService(gh<_i5.ApiService>()));
    return this;
  }
}

class _$DioModule extends _i8.DioModule {}
