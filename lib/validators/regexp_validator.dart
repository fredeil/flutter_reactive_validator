import 'field_validator.dart';

/// Validate value against provided [RegExp]
class RegexpValidator extends FieldValidator<String> {
  final RegExp regExp;

  RegexpValidator(
    this.regExp, {
    String fieldName,
    String errorMessage,
  }) : super(
          fieldName: fieldName,
          message:
              errorMessage ?? 'doesn\'t match to ${regExp.pattern} pattern',
        );

  const RegexpValidator.withMessage(this.regExp, String message)
      : super.withMessage(
          message: message,
        );

  @override
  bool isValid(String value) => regExp.hasMatch(value);
}
