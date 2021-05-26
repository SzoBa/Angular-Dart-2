import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:basicdemo/app_component.template.dart' as app;

import 'main.template.dart' as self;

@GenerateInjector(routerProvidersHash,)

final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(app.AppComponentNgFactory, createInjector: injector);
}

//injector.register(CustomFactory(() => Engine()));