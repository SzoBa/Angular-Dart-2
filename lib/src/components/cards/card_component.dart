import 'package:angular/angular.dart';
import 'package:basicdemo/src/model/course_model.dart';

@Component(
  selector: 'course-card',
  templateUrl: './card_template.html',
  directives: [coreDirectives],
  providers: [],
)
class CourseCard {
  @Input('selectedCourse')
  Course course;

  void deleteItem(String id) {
    print(id);
  }
}