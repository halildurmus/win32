/// Represents the detailed documentation for an API.
///
/// This class mirrors the structure of the
/// [ApiDetails](https://github.com/microsoft/win32metadata/blob/main/apidocs/Microsoft.Windows.SDK.Win32Docs/ApiDetails.cs) class in the
/// class.
final class ApiDetails {
  /// Creates an instance of [ApiDetails] with the specified fields.
  const ApiDetails({
    required this.apiName,
    required this.description,
    this.helpLink,
    this.remarks,
    this.returnValue,
    this.parameters = const {},
    this.fields = const {},
  });

  /// Creates an instance of [ApiDetails] from an external data source.
  ///
  /// This is primarily used when deserializing data (e.g., from MessagePack).
  /// It expects a list of dynamic values in a specific format:
  /// - [apiName] is the name of the API.
  /// - [list] mus bet containing the following:
  ///   1. A help link URL (optional).
  ///   2. A description of the API (optional).
  ///   3. Additional remarks (optional).
  ///   4. A map of parameters (key-value pairs of parameter names and
  ///      descriptions).
  ///   5 A map of fields (key-value pairs of field names and descriptions).
  ///   6. A description of the return value (optional).
  ///
  /// Throws a [FormatException] if the data format does not match the expected
  /// structure.
  factory ApiDetails.fromList(String apiName, List<dynamic> list) {
    if (list case [
      final String? helpLink,
      final String? description,
      final String? remarks,
      final Map<dynamic, dynamic> parameters,
      final Map<dynamic, dynamic> fields,
      final String? returnValue,
    ]) {
      return ApiDetails(
        apiName: apiName,
        description: description,
        fields: fields.cast(),
        helpLink: helpLink,
        parameters: parameters.cast(),
        remarks: remarks,
        returnValue: returnValue,
      );
    }

    throw FormatException('Invalid data format for API "$apiName": $list');
  }

  /// The unique name of the API being documented.
  final String apiName;

  /// A concise description of the API's purpose and functionality.
  final String? description;

  /// A map of field names and their descriptions.
  ///
  /// Fields represent members or attributes of the API, typically in the
  /// context of structs or objects.
  final Map<String, String> fields;

  /// A URL to the official documentation page or help resource for this API.
  final String? helpLink;

  /// A map of parameter names and their descriptions.
  ///
  /// Parameters describe the input values or arguments the API accepts.
  final Map<String, String> parameters;

  /// Additional detailed information or remarks about the API.
  ///
  /// This may include edge cases, exceptions, or contextual explanations.
  final String? remarks;

  /// Documentation for the return value of the API, if applicable.
  ///
  /// This field explains the result or output produced by the API call.
  final String? returnValue;

  @override
  String toString() =>
      'ApiDetails(\n'
      '  helpLink: $helpLink,\n'
      '  description: $description,\n'
      '  remarks: $remarks,\n'
      '  parameters: $parameters,\n'
      '  fields: $fields,\n'
      '  returnValue: $returnValue,\n'
      ')';
}
