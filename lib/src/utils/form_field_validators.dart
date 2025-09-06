import 'package:flutter/widgets.dart';

abstract class FormFieldValidators {
  static FormFieldValidator<Object> isRequired = (value) {
    if (value == null || (value is String && value.isEmpty) || (value is Iterable && value.isEmpty)) {
      return 'Required';
    }
    return null;
  };
}
