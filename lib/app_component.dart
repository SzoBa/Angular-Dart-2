import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:basicdemo/src/components/footer/footer_component.dart';
import 'package:basicdemo/src/components/header/header_component.dart';
import 'package:basicdemo/src/utils/routes.dart';


// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  // styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [routerDirectives, AppHeader, FooterComponent],
  exports: [RoutePaths, Routes]
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
