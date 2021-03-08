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

export 'src/attribute.dart';
export 'src/constants.dart';
export 'src/enumeration.dart';
export 'src/metadatastore.dart';
export 'src/method.dart';
export 'src/module.dart';
export 'src/parameter.dart';
export 'src/scope.dart';
export 'src/typedef.dart';
export 'src/typeidentifier.dart';
export 'src/utils.dart';

export 'src/com/IMetaDataDispenser.dart';
export 'src/com/IMetaDataDispenserEx.dart';
export 'src/com/IMetaDataImport.dart';
export 'src/com/IMetaDataImport2.dart';

export 'src/projection/classprojector.dart';
export 'src/projection/projections.dart';
export 'src/projection/typeprinter.dart';
export 'src/projection/typeprojector.dart';
