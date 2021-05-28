import 'package:angular/angular.dart';
import 'package:basicdemo/src/model/course_model.dart';
import 'package:basicdemo/src/model/profile_model.dart';

@Injectable()
class ProfileService {

  final _profile = Profile(
    '111', 'Test Elemer', 'test@gmail.com', 'https://tinyurl.com/y27lbuav', 'golden', <Course>[Course('222', 'Title3', 'Me', 5.4)],
    <Course>[], DateTime.now().toIso8601String()
  );

  Profile getProfile() {
    return _profile;
  }
  
}