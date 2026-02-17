import 'manager.dart';
import 'developer.dart';

void main() {
  var manager = Manager("Budi", 10000000).generateReport();
  var developer = Developer("Andi", 8000000).generateReport();
}
