import '../../widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ScheduledScreen extends StatelessWidget {
  const ScheduledScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: 'Scheduled Screen',),
    );
  }
}