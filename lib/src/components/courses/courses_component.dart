import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:basicdemo/src/components/cards/card_component.dart';
import 'package:basicdemo/src/model/course_model.dart';
import 'package:basicdemo/src/utils/routes.dart';

@Component(
  selector: 'courses',
  templateUrl: './courses_template.html',
  // styleUrls: ['component_path.css'],
  directives: [coreDirectives, CourseCard],
  providers: [],
)
class CoursesComponent {

  final Router _router;

  CoursesComponent(this._router);


  List<Course> courses = [
    Course(
      '111', 'The title1', 'Myself', 9.99, 'Fancy description', 5, 'assets/images/1.png', ['Lecture1', 'Lecture2'],
      ['JavaScript', 'programming'], DateTime.now().toIso8601String(),
    ),
    Course(
      '112', 'The title2', 'Myself', 9.99, 'Fancy description', 5, 'assets/images/2.png', ['Lecture1', 'Lecture2'],
      ['JavaScript', 'programming'], DateTime.now().toIso8601String(),
    ),
  ];

  void deleteItem(String uid) {
    courses.removeWhere((course) => course.uid == uid);
  }

  Future<NavigationResult> viewDetail(String uid) {
    return _router.navigate(_redirectUrlMaker(uid));
  }

  String _redirectUrlMaker(String uid) {
    return RoutePaths.course_detail.toUrl(parameters: {idParam: uid});
  }
}