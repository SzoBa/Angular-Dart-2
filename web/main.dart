import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:basicdemo/app_component.template.dart' as app;
import 'package:basicdemo/src/utils/in-memory-data.service.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

import 'main.template.dart' as self;

@GenerateInjector([
  routerProvidersHash,
  ClassProvider(Client, useClass: BrowserClient),
  ClassProvider(Client, useClass: InMemoryData)
])

final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(app.AppComponentNgFactory, createInjector: injector);
}

//injector.register(CustomFactory(() => Engine()));