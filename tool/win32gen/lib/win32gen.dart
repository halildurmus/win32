/// Generates Win32 and COM APIs for the win32 package based on Windows
/// metadata.
library win32gen;

export 'src/constants.dart';

export 'src/model/exclusions.dart';
export 'src/model/false_properties.dart';
export 'src/model/functions.dart';
export 'src/model/load_json.dart';
export 'src/model/struct_sizes.dart';

export 'src/projection/callback.dart';
export 'src/projection/com_class.dart';
export 'src/projection/com_interface.dart';
export 'src/projection/com_method.dart';
export 'src/projection/com_property.dart';
export 'src/projection/field.dart';
export 'src/projection/function.dart';
export 'src/projection/headers.dart';
export 'src/projection/method.dart';
export 'src/projection/nested_struct.dart';
export 'src/projection/parameter.dart';
export 'src/projection/safenames.dart';
export 'src/projection/struct.dart';
export 'src/projection/test_interface.dart';
export 'src/projection/type.dart';
export 'src/projection/utils.dart';
