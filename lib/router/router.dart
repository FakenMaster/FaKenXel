import 'package:FaKenXel/ui/page/video_play_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

import '../ui/page/photo_page.dart';

@MaterialAutoRouter()
class $Router {
  HomePage homePage;

  @initial
  VideoPlayPage videoPlayPage;
}
