// import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:basicdemo/src/utils/route_paths.dart';

@Component(
  selector: 'app-header',
  templateUrl: './header_template.html',
  // styleUrls: ['component_path.css'],
  directives: [coreDirectives, routerDirectives],
  providers: [],
  exports: [RoutePaths]
)

class AppHeader {}

// class AppHeader implements OnInit {

//   @override
//   Future<Null> ngOnInit() async {
//     // TODO: implement ngOnInit
//   }


// }