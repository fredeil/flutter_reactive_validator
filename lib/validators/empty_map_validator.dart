import 'field_validator.dart';

/// Validates if [Map] is empty
class EmptyMapValidator<K, V> extends FieldValidator<Map<K, V>> {
  const EmptyMapValidator({String fieldName, String message})
      : super(
          fieldName: fieldName,
          message: message ?? 'should be empty',
        );

  const EmptyMapValidator.withMessage(String message)
      : super.withMessage(message: message);

  @override
  bool isValid(Map<K, V> value) => value.isEmpty;
}
