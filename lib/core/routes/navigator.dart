import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

pushTo(BuildContext context, String route) {
  context.push(route);
}

pushToWithExtra(BuildContext context, String route , Object extra) {
  context.push(route , extra: extra);
}


pushWithReplacement(BuildContext context, String route) {
  context.push(route);
}

pushAndRemoveUntil(BuildContext context, String route) {
  context.go(route);
}

pop(BuildContext context) {
  context.pop(context);
}
