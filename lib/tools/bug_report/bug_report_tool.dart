import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class BugReportTool {
  static Future<void> runMonitoredApp(
      {required FutureOr<void> Function() app, required String dsn}) async {
    if (kDebugMode) {
      app();
    } else {
      await SentryFlutter.init(
        (options) {
          options.dsn = dsn;
        },
        appRunner: app,
      );
    }
  }
}
