import 'package:smart_pro/service.dart';
import 'package:smart_pro/src/app/app.dart';
import 'bootstrap.dart';

void main() {
  bootstrap(() => serviceBuild(() => const App()));
}
