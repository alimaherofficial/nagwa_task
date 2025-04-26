import 'dart:developer';

import 'package:flutter/material.dart';

/// A navigator observer that uses AnalyticsHelper.setCurrentScreen to send
class AnalyticsNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route.settings.name != null) {
      log('didPush: ${route.settings.name}');
    }
  }
}
