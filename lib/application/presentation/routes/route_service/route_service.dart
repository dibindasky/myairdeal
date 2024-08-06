import 'package:get/get.dart';

bool isNotLastRouteInNestedStack(int nestedId) {
  final nestedNavigatorState = Get.nestedKey(nestedId)?.currentState;
  if (nestedNavigatorState != null) {
    final routes = nestedNavigatorState.widget.pages;
    print('routes length => ${routes.length}');
    print('routes => ${routes}');
    if (routes.isNotEmpty && nestedNavigatorState.canPop()) {
      return true;
    }
  }
  return false;
}
