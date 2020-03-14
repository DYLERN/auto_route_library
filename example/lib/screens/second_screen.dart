import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'nested_screens/nested_router.gr.dart';

class SecondScreen extends StatelessWidget implements AutoRouteWrapper {
  final String message;

  const SecondScreen({title, this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Text("Second Screen here"),
          Expanded(
            child: ExtendedNavigator<NestedRouter>(
              router: NestedRouter(),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget get wrappedRoute => Container(child: this);
}