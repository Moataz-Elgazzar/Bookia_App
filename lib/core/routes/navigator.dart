import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

pushTo(BuildContext context, String route, {Object? extra}) {
  context.push(route, extra: extra);
}

pushToWithExtra(BuildContext context, String route, {Object? extra}) {
  context.push(route, extra: extra);
}

pushWithReplacement(BuildContext context, String route, {Object? extra}) {
  context.push(route, extra: extra);
}

pushAndRemoveUntil(BuildContext context, String route) {
  context.go(route);
}

pop(BuildContext context) {
  context.pop(context);
}
