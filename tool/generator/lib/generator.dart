/// Generates Win32, COM and Windows Runtime APIs for the win32 package based on
/// Windows metadata.
library generator;

export 'src/model/exclusions.dart';
export 'src/model/false_properties.dart';
export 'src/model/functions.dart';
export 'src/model/import_headers.dart';
export 'src/model/load_json.dart';
export 'src/model/struct_sizes.dart';

export 'src/projection/callback.dart';
export 'src/projection/com_class.dart';
export 'src/projection/com_interface.dart';
export 'src/projection/com_method.dart';
export 'src/projection/com_property.dart';
export 'src/projection/enum.dart';
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
export 'src/projection/winrt/winrt_class.dart';
export 'src/projection/winrt/winrt_get_property.dart';
export 'src/projection/winrt/winrt_interface.dart';
export 'src/projection/winrt/winrt_method.dart';
export 'src/projection/winrt/winrt_parameter.dart';
export 'src/projection/winrt/winrt_property.dart';
export 'src/projection/winrt/winrt_set_property.dart';
