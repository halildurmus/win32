/// Support for working with Windows Metadata, as defined in the ECMA-335
/// specification.
///
/// The specification itself can be found at:
///   https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-335.pdf

// Further sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile

// ignore_for_file: directives_ordering

library winmd;

export 'src/base.dart';
export 'src/classlayout.dart';
export 'src/constants.dart';
export 'src/customattribute.dart';
export 'src/event.dart';
export 'src/field.dart';
export 'src/genericparam.dart';
export 'src/genericparamconstraint.dart';
export 'src/metadatastore.dart';
export 'src/method.dart';
export 'src/methodimpls.dart';
export 'src/moduleref.dart';
export 'src/parameter.dart';
export 'src/pekind.dart';
export 'src/pinvokemap.dart';
export 'src/property.dart';
export 'src/scope.dart';
export 'src/type_aliases.dart';
export 'src/typedef.dart';
export 'src/typeidentifier.dart';

export 'src/com/IMetaDataDispenser.dart';
export 'src/com/IMetaDataDispenserEx.dart';
export 'src/com/IMetaDataImport.dart';
export 'src/com/IMetaDataImport2.dart';

export 'src/utils/blob.dart';
export 'src/utils/exception.dart';
export 'src/utils/typetuple.dart';
