import 'package:meta/meta.dart';

import 'log_level.dart';

/// Log Message
@immutable
class LogMessage {
  /// Log date
  final DateTime date;

  /// Message
  final Object message;

  /// Log level
  final LogLevel level;

  /// Display in console
  final bool print;

  /// Store?
  final bool store;

  /// Prefix from log level
  String get prefix => _prefixFromLogLevel();

  /// Log Message constructor
  const LogMessage(
      {this.date,
      @required this.message,
      LogLevel level,
      bool displayInConsole,
      bool store})
      : assert(date is DateTime && message != null),
        level = level ?? LogLevel.vvvvvv,
        print = displayInConsole ?? true,
        store = store ?? true;

  String _prefixFromLogLevel() {
    switch (level) {
      case (LogLevel.v):
        return '     *';
      case (LogLevel.vv):
        return '    **';
      case (LogLevel.vvv):
        return '   ***';
      case (LogLevel.vvvv):
        return '  ****';
      case (LogLevel.vvvvv):
        return ' *****';
      case (LogLevel.vvvvvv):
        return '******';
      case (LogLevel.info):
        return '     i';
      case (LogLevel.warning):
        return '     w';
      case (LogLevel.error):
        return '     e';
      case (LogLevel.debug):
        return '     d';
      default:
        return '      ';
    }
  }

  @override
  String toString() => '[$prefix] $message';

  /// LogMessage to Map<String, dynamic>
  Map<String, dynamic> toMap() => <String, dynamic>{
        'date': date.millisecondsSinceEpoch,
        'message': message?.toString(),
        'level': levelsAllocation[level],
      };
}