import 'package:flutter/widgets.dart';

typedef Widget ArgBuilder<T>(BuildContext context, T value);

class Property<T> extends ValueNotifier {
  Property(value) : super(value);

  Widget build(ArgBuilder<T> builder) {
    return new AnimatedBuilder(
      animation: this,
      key: new ObjectKey(this),
      builder: (context, oldWidget) => builder(context, value),
    );
  }
}

typedef void SegueCallback<T>(BuildContext context, T argument);
