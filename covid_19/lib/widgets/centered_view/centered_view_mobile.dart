import 'package:flutter/material.dart';

class CenteredViewMobile extends StatelessWidget {
  final Widget child;
  const CenteredViewMobile({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    // stops: [
    //   0.2,
    //   0.5,
      
    // ],
    colors: [Colors.cyan[400],
     Colors.indigo[900]])),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        
        constraints: BoxConstraints(maxWidth: 1400),
        child: child,
      ),
    );
  }
}
