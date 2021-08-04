import 'package:cadevo/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({Key key, this.isSelected, this.text, this.onSelected}) : super(key: key);
  final bool isSelected;
  final String text;
  final Function onSelected;

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: ChoiceChip(
        label:
        isSelected ?
        CustomText(text: text, color: Colors.white,) :
        CustomText(text: text, weight: FontWeight.w600, color: Colors.black.withOpacity(.4),),
        selected: isSelected,
        selectedColor: Colors.red,
        onSelected: onSelected,
        backgroundColor: Colors.grey.withOpacity(.15),
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
