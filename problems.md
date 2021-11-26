## TODO

use of reserved keywords for struct fields
e.g. FILTER_AGGREGATE_BASIC_INFORMATION.Type

property getters and setters don't have the same type
e.g. IXMLDOMNode.get_dataType

child structs are more loosely packed than parent structs
e.g. RFCOMM_COMMAND

interfaces aren't discriminating between 'A' and 'W' suffixes
e.g. IDirectInput

callbacks and functions are being defined for each processor type
e.g. PGET_RUNTIME_FUNCTION_CALLBACK, SymFromAddr

## DONE

set properties that have multiple parameters
e.g. IX509SignatureInformation.Parameters

struct members are being projected with `_` prefixes
e.g. SLIST_HEADER

callbacks aren't finding matching functions (could be because of A suffix?)
e.g. PFAX_EXT_INITIALIZE_CONFIG, PWLX_QUERY_TERMINAL_SERVICES_DATA

functions are including libraries that don't contain any methods
e.g. Windows.Win32.Globalization

some typedefs are being renamed in v2 style
e.g. PWLX_DIALOG_BOX

PROPSPEC isn't being promoted correctly
e.g. IWiaMiniDrv.drvValidateItemProperties

deeply nested structs aren't projecting correctly
e.g. CM_NOTIFY_EVENT_DATA

some structs are being falsely treated as 'A' suffix
e.g. NCRYPT_ALLOC_PARA, CERT_REVOCATION_CHAIN_PARA
