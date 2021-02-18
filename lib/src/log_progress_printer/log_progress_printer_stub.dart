// ignore_for_file: avoid_returning_null_for_void

import 'log_progress_printer_base.dart';

///
ProgressPrinter getProgressPrinter() => ProgressPrinter();

///
class ProgressPrinter implements ProgressPrinterBase {
  @override
  bool get available => false;

  @override
  int get columns => 0;

  @override
  bool get supportsAnsiEscapes => false;

  @override
  void discard() => null;

  @override
  void printLines(
    String header,
    String content,
    String footer,
    int width,
  ) =>
      null;
}