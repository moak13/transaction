import 'package:auto_route/auto_route_annotations.dart';

import '../../features/wrapper/wrapper_view.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute(page: WrapperView, name: 'wrapper_view', initial: true),
])
class $Router {}
