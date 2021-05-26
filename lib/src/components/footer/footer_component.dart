import 'package:angular/angular.dart';
import 'package:intl/intl.dart';


@Component(
  selector: 'footer',
  template: '''
  <div class="row row-cols-1">
    <div class="col text-muted lead">
      <p>Copyright &#169; {{ copyDate }} Demo App | Current date: {{ date }}</p>
    </div>
  </div>
  ''',
  directives: [coreDirectives],
  providers: [],
)
class FooterComponent {
  String copyDate = DateTime.now().year.toString();
  String date = DateFormat('yyyy-MM-dd').format(DateTime.now());
}