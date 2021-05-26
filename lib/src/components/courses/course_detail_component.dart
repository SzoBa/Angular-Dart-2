import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:basicdemo/src/components/cards/card_component.dart';
import 'package:basicdemo/src/components/courses/course_service.dart';
import 'package:basicdemo/src/model/course_model.dart';
import 'package:basicdemo/src/utils/route_paths.dart';

@Component(
  selector: 'course-detail',
  // templateUrl: './course_detail_template.html',
  template: '''
  <div class='row'>
    <p *ngIf='selectedCourse == null'>
      No Selected Course or unknown
    </p>
    <course-card
    *ngIf='selectedCourse != null'
    [selectedCourse]="selectedCourse"
    (onDelete)="deleteCourse()"
    (onViewDetail)="enrollCourse()"
    firstBtnTitle="Enroll"
    ></course-card>
  </div>  
    ''',
  directives: [coreDirectives, CourseCard],
  providers: [ClassProvider(CourseService)],
)
class CourseDetail implements OnActivate {

  final CourseService _courseService;
  final Location _location;
  Course selectedCourse;


  CourseDetail(this._courseService, this._location);


  @override
  void onActivate(RouterState previous, RouterState current) async {
    final uid = getId(current.parameters);
    if (uid != null) {
      selectedCourse = _courseService.getSingleCourse(uid);
    }
  }

  void deleteCourse() {
    this._courseService.deleteCourse(selectedCourse.uid);
    this._location.back();
  }

  void enrollCourse() {

  }

}