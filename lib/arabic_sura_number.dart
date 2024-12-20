import 'package:app_quran_karim/to_arabic_no_converter.dart';
import 'package:flutter/material.dart';
class ArabicSuraNumber extends StatelessWidget {
  const ArabicSuraNumber({super.key,required this.i});
  final int i;
  @override
  Widget build(BuildContext context) {
    return Text("\uFD3E${(i+1).toString().toArabicNumbers}\uFD3F", style: const TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontFamily: 'me_quran',
        fontSize: 20,
        shadows: [
          Shadow(
            offset: Offset(.5, .5),
            blurRadius: 1.0,
            color: Colors.amberAccent,
          ),
        ]),);
  }
}