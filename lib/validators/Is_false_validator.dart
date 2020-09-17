import 'not_equal_to_validator.dart';

/// Checks if provided value is equal to `true`
class IsFalseValidator extends NotEqualToValidator<bool> {
  const IsFalseValidator({
    String fieldName,
    String message = 'should be equal to false',
  })  : super(
    false,
    fieldName: fieldName,
    message: message,
  );

  const IsFalseValidator.withMessage(String message)
      : super.withMessage(false, message);
}