// lib/env/env.dart
import 'package:envied/envied.dart';

part 'app_env.g.dart';

@Envied(name: 'Env', path: '.env')
abstract class Env {
}
