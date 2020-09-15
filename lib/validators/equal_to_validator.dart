import 'field_validator.dart';

/// Checks if value is equal to provided value
class EqualToValidator<I> extends FieldValidator<I> {
  final I equalTo;

  EqualToValidator(this.equalTo, {
    String fieldName,
    String message,
  })  : super(
    fieldName: fieldName,
    message: message ?? 'should be equal to $equalTo',
    ignoreNullable: false,
  );

  EqualToValidator.withMessage(
    this.equalTo,
    String message
  )   : super.withMessage(
    message: message,
    ignoreNullable: false,
  );

  @override
  bool isValid(I value) => value == equalTo;
}