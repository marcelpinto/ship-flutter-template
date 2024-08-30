import 'package:logger/logger.dart';

final Logger _logger = Logger();

/// Use this log function everywhere to use the active logger
/// Use disable logging to disable all logging
/// Using lambda functions avoid executing them, this avoid possible errors
/// in the logging function itself but also exectuion time.
void log({
  String Function()? d,
  String Function()? t,
  String Function()? i,
  String Function()? w,
  String Function()? e,
  String Function()? f,
  Object? error,
}) {
  final level = Logger.level.value;
  if (d != null && level <= Level.debug.value) {
    _logger.d(d());
  }
  if (t != null && level <= Level.trace.value) {
    _logger.t(t());
  }
  if (i != null && level <= Level.info.value) {
    _logger.i(i());
  }
  if (w != null && level <= Level.warning.value) {
    _logger.w(w());
  }
  if ((e != null || error != null) && level <= Level.error.value) {
    _logger.e(
      e != null ? e() : error?.toString(),
      error: error,
      stackTrace: StackTrace.current,
    );
  }
  if ((f != null || error != null) && level <= Level.fatal.value) {
    _logger.f(
      f != null ? f() : error?.toString(),
      error: error,
      stackTrace: StackTrace.current,
    );
  }
}
