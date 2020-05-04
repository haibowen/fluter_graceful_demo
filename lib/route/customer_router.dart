import 'package:flutter/material.dart';

class CustomerRouter<T> extends MaterialPageRoute<T> {
  CustomerRouter({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // TODO: implement buildTransitions

    if (settings.isInitialRoute) return child;
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
