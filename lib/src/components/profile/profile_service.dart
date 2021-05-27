import 'package:angular/angular.dart';
import 'package:basicdemo/src/model/course_model.dart';

@Injectable()
class ProfileService {

  final _profile = Profile(
    '111', 'Test Elemer', 'test@gmail.com', 'golden', <Course>[Course('222', 'Title3', 'Me', 5.4)],
    <Course>[], DateTime.now().toIso8601String()
  );

  Profile getProfile() {
    return _profile;
  }
  
}

class Profile {
  String uid;
  String name;
  String email;
  List<Course> courses;
  List<Course> finishedCourses;
  String badge;
  String updateAt = DateTime.now().toIso8601String();

  Profile(
    this.uid, this.name, this.email, [
      this.badge = 'golden',
      this.courses = const [],
      this.finishedCourses = const [],
      this.updateAt,
    ]
  );
  
}