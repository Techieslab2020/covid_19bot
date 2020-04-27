import 'package:flutter/material.dart';

class CenteredViewDesktop extends StatelessWidget {
  final Widget child;
  const CenteredViewDesktop({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.cyan[400],
     Colors.indigo[900]])),
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        
        constraints: BoxConstraints(maxWidth: 1400),
        child: child,
      ),
    );
  }
}
