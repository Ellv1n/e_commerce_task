import 'package:flutter/widgets.dart';

extension NumEtensions on num {
  SizedBox get h => SizedBox(height: toDouble());  
  SizedBox get w => SizedBox(width: toDouble());
}
