import 'package:flutter/cupertino.dart';

class AnimatedText extends AnimatedWidget {
  const AnimatedText(
      {Key? key,
      required Animation<double> animation,
      required this.text,
      required this.textStyle})
      : super(key: key, listenable: animation);

  static final _sizeTween = Tween<double>(begin: 0, end: 300);
  final String text;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 0),
        height: _sizeTween.evaluate(animation),
        width: _sizeTween.evaluate(animation),
        child: Text(text, style: textStyle));
  }
}
