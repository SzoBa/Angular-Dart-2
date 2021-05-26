import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:basicdemo/src/components/cards/card_component.dart';
import 'package:basicdemo/src/components/courses/course_service.dart';
import 'package:basicdemo/src/model/course_model.dart';
import 'package:basicdemo/src/utils/routes.dart';

@Component(
  selector: 'courses',
  templateUrl: './courses_template.html',
  // styleUrls: ['component_path.css'],
  directives: [coreDirectives, CourseCard],
  providers: [ClassProvider(CourseService)],
)
class CoursesComponent implements OnInit{

  final Router _router;
  final CourseService _courseService;
  List<Course> courses = [];

  CoursesComponent(this._router, this._courseService);

  @override
  void ngOnInit() {
    courses = _courseService.getAll();
  }


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