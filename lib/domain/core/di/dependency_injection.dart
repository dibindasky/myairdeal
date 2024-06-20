import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:myairdeal/domain/core/di/dependency_injection.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  getIt.init(environment: Environment.prod);
}
