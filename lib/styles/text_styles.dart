import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Returns the style for a page title based on the [deviceScreenType] passed in.
TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.Mobile ? 40 : 60;
  return TextStyle(
      fontWeight: FontWeight.w600, height: 1.1, fontSize: titleSize,color: Color.fromARGB(255, 255, 255, 255));
}
TextStyle subtitleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.Mobile ? 25 : 45;
  return TextStyle(
       height: 1.1, fontSize: titleSize,color: Color.fromARGB(255, 255, 255, 255));
}

/// Return the style for description text on a page based on the [deviceScreenType] passed in.
TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize =
      deviceScreenType == DeviceScreenType.Mobile ? 15 : 19;

  return TextStyle(
    fontSize: descriptionSize,
    height: 1.7,
    color: Color.fromARGB(255, 255, 255, 255)

  );
}
TextStyle disclaimerTextStyle(DeviceScreenType deviceScreenType) {
  double disclaimerSize =
      deviceScreenType == DeviceScreenType.Mobile ? 12 : 14;

  return TextStyle(
    fontSize: disclaimerSize,
    height: 1.2,
    color: Color.fromARGB(255, 255, 255, 255),
    letterSpacing: 1.0
  );
}
TextStyle disclaimerboldTextStyle(DeviceScreenType deviceScreenType) {
  double disclaimerbold =
      deviceScreenType == DeviceScreenType.Mobile ? 11 : 14;

  return TextStyle(
    fontSize: disclaimerbold,
    height: 1.7,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255)
  );
}