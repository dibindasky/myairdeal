import 'package:get/get.dart';

bool isNotLastRouteInNestedStack(int nestedId) {
  final navigatorState = Get.nestedKey(nestedId)?.currentState;

  // Check if the navigator stack can pop
  if (navigatorState != null && !navigatorState.canPop()) {
    // The current route is the last one in the stack
    return true;
  }
  // There are routes to pop or the navigatorState is null
  return false;
}
