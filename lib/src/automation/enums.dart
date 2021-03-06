/// {@category Enum}
class VARENUM {
  static const VT_EMPTY = 0x00000000;
  static const VT_NULL = 0x00000001;
  static const VT_I2 = 0x00000002;
  static const VT_I4 = 0x00000003;
  static const VT_R4 = 0x00000004;
  static const VT_R8 = 0x00000005;
  static const VT_CY = 0x00000006;
  static const VT_DATE = 0x00000007;
  static const VT_BSTR = 0x00000008;
  static const VT_DISPATCH = 0x00000009;
  static const VT_ERROR = 0x0000000a;
  static const VT_BOOL = 0x0000000b;
  static const VT_VARIANT = 0x0000000c;
  static const VT_UNKNOWN = 0x0000000d;
  static const VT_DECIMAL = 0x0000000e;
  static const VT_I1 = 0x00000010;
  static const VT_UI1 = 0x00000011;
  static const VT_UI2 = 0x00000012;
  static const VT_UI4 = 0x00000013;
  static const VT_I8 = 0x00000014;
  static const VT_UI8 = 0x00000015;
  static const VT_INT = 0x00000016;
  static const VT_UINT = 0x00000017;
  static const VT_VOID = 0x00000018;
  static const VT_HRESULT = 0x00000019;
  static const VT_PTR = 0x0000001a;
  static const VT_SAFEARRAY = 0x0000001b;
  static const VT_CARRAY = 0x0000001c;
  static const VT_USERDEFINED = 0x0000001d;
  static const VT_LPSTR = 0x0000001e;
  static const VT_LPWSTR = 0x0000001f;
  static const VT_RECORD = 0x00000024;
  static const VT_INT_PTR = 0x00000025;
  static const VT_UINT_PTR = 0x00000026;
  static const VT_FILETIME = 0x00000040;
  static const VT_BLOB = 0x00000041;
  static const VT_STREAM = 0x00000042;
  static const VT_STORAGE = 0x00000043;
  static const VT_STREAMED_OBJECT = 0x00000044;
  static const VT_STORED_OBJECT = 0x00000045;
  static const VT_BLOB_OBJECT = 0x00000046;
  static const VT_CF = 0x00000047;
  static const VT_CLSID = 0x00000048;
  static const VT_VERSIONED_STREAM = 0x00000049;
  static const VT_BSTR_BLOB = 0x00000fff;
  static const VT_VECTOR = 0x00001000;
  static const VT_ARRAY = 0x00002000;
  static const VT_BYREF = 0x00004000;
  static const VT_RESERVED = 0x00008000;
  static const VT_ILLEGAL = 0x0000ffff;
  static const VT_ILLEGALMASKED = 0x00000fff;
  static const VT_TYPEMASK = 0x00000fff;
}

/// {@category Enum}
class SF_TYPE {
  static const SF_ERROR = 0x0000000a;
  static const SF_I1 = 0x00000010;
  static const SF_I2 = 0x00000002;
  static const SF_I4 = 0x00000003;
  static const SF_I8 = 0x00000014;
  static const SF_BSTR = 0x00000008;
  static const SF_UNKNOWN = 0x0000000d;
  static const SF_DISPATCH = 0x00000009;
  static const SF_VARIANT = 0x0000000c;
  static const SF_RECORD = 0x00000024;
  static const SF_HAVEIID = 0x0000800d;
}

/// {@category Enum}
class TYPEKIND {
  static const TKIND_ENUM = 0x00000000;
  static const TKIND_RECORD = 0x00000001;
  static const TKIND_MODULE = 0x00000002;
  static const TKIND_INTERFACE = 0x00000003;
  static const TKIND_DISPATCH = 0x00000004;
  static const TKIND_COCLASS = 0x00000005;
  static const TKIND_ALIAS = 0x00000006;
  static const TKIND_UNION = 0x00000007;
  static const TKIND_MAX = 0x00000008;
}

/// {@category Enum}
class CALLCONV {
  static const CC_FASTCALL = 0x00000000;
  static const CC_CDECL = 0x00000001;
  static const CC_MSCPASCAL = 0x00000002;
  static const CC_PASCAL = 0x00000002;
  static const CC_MACPASCAL = 0x00000003;
  static const CC_STDCALL = 0x00000004;
  static const CC_FPFASTCALL = 0x00000005;
  static const CC_SYSCALL = 0x00000006;
  static const CC_MPWCDECL = 0x00000007;
  static const CC_MPWPASCAL = 0x00000008;
  static const CC_MAX = 0x00000009;
}

/// {@category Enum}
class FUNCKIND {
  static const FUNC_VIRTUAL = 0x00000000;
  static const FUNC_PUREVIRTUAL = 0x00000001;
  static const FUNC_NONVIRTUAL = 0x00000002;
  static const FUNC_STATIC = 0x00000003;
  static const FUNC_DISPATCH = 0x00000004;
}

/// {@category Enum}
class INVOKEKIND {
  static const INVOKE_FUNC = 0x00000001;
  static const INVOKE_PROPERTYGET = 0x00000002;
  static const INVOKE_PROPERTYPUT = 0x00000004;
  static const INVOKE_PROPERTYPUTREF = 0x00000008;
}

/// {@category Enum}
class VARKIND {
  static const VAR_PERINSTANCE = 0x00000000;
  static const VAR_STATIC = 0x00000001;
  static const VAR_CONST = 0x00000002;
  static const VAR_DISPATCH = 0x00000003;
}

/// {@category Enum}
class TYPEFLAGS {
  static const TYPEFLAG_FAPPOBJECT = 0x00000001;
  static const TYPEFLAG_FCANCREATE = 0x00000002;
  static const TYPEFLAG_FLICENSED = 0x00000004;
  static const TYPEFLAG_FPREDECLID = 0x00000008;
  static const TYPEFLAG_FHIDDEN = 0x00000010;
  static const TYPEFLAG_FCONTROL = 0x00000020;
  static const TYPEFLAG_FDUAL = 0x00000040;
  static const TYPEFLAG_FNONEXTENSIBLE = 0x00000080;
  static const TYPEFLAG_FOLEAUTOMATION = 0x00000100;
  static const TYPEFLAG_FRESTRICTED = 0x00000200;
  static const TYPEFLAG_FAGGREGATABLE = 0x00000400;
  static const TYPEFLAG_FREPLACEABLE = 0x00000800;
  static const TYPEFLAG_FDISPATCHABLE = 0x00001000;
  static const TYPEFLAG_FREVERSEBIND = 0x00002000;
  static const TYPEFLAG_FPROXY = 0x00004000;
}

/// {@category Enum}
class FUNCFLAGS {
  static const FUNCFLAG_FRESTRICTED = 0x00000001;
  static const FUNCFLAG_FSOURCE = 0x00000002;
  static const FUNCFLAG_FBINDABLE = 0x00000004;
  static const FUNCFLAG_FREQUESTEDIT = 0x00000008;
  static const FUNCFLAG_FDISPLAYBIND = 0x00000010;
  static const FUNCFLAG_FDEFAULTBIND = 0x00000020;
  static const FUNCFLAG_FHIDDEN = 0x00000040;
  static const FUNCFLAG_FUSESGETLASTERROR = 0x00000080;
  static const FUNCFLAG_FDEFAULTCOLLELEM = 0x00000100;
  static const FUNCFLAG_FUIDEFAULT = 0x00000200;
  static const FUNCFLAG_FNONBROWSABLE = 0x00000400;
  static const FUNCFLAG_FREPLACEABLE = 0x00000800;
  static const FUNCFLAG_FIMMEDIATEBIND = 0x00001000;
}

/// {@category Enum}
class VARFLAGS {
  static const VARFLAG_FREADONLY = 0x00000001;
  static const VARFLAG_FSOURCE = 0x00000002;
  static const VARFLAG_FBINDABLE = 0x00000004;
  static const VARFLAG_FREQUESTEDIT = 0x00000008;
  static const VARFLAG_FDISPLAYBIND = 0x00000010;
  static const VARFLAG_FDEFAULTBIND = 0x00000020;
  static const VARFLAG_FHIDDEN = 0x00000040;
  static const VARFLAG_FRESTRICTED = 0x00000080;
  static const VARFLAG_FDEFAULTCOLLELEM = 0x00000100;
  static const VARFLAG_FUIDEFAULT = 0x00000200;
  static const VARFLAG_FNONBROWSABLE = 0x00000400;
  static const VARFLAG_FREPLACEABLE = 0x00000800;
  static const VARFLAG_FIMMEDIATEBIND = 0x00001000;
}

/// {@category Enum}
class DESCKIND {
  static const DESCKIND_NONE = 0x00000000;
  static const DESCKIND_FUNCDESC = 0x00000001;
  static const DESCKIND_VARDESC = 0x00000002;
  static const DESCKIND_TYPECOMP = 0x00000003;
  static const DESCKIND_IMPLICITAPPOBJ = 0x00000004;
  static const DESCKIND_MAX = 0x00000005;
}

/// {@category Enum}
class SYSKIND {
  static const SYS_WIN16 = 0x00000000;
  static const SYS_WIN32 = 0x00000001;
  static const SYS_MAC = 0x00000002;
  static const SYS_WIN64 = 0x00000003;
}

/// {@category Enum}
class LIBFLAGS {
  static const LIBFLAG_FRESTRICTED = 0x00000001;
  static const LIBFLAG_FCONTROL = 0x00000002;
  static const LIBFLAG_FHIDDEN = 0x00000004;
  static const LIBFLAG_FHASDISKIMAGE = 0x00000008;
}

/// {@category Enum}
class CHANGEKIND {
  static const CHANGEKIND_ADDMEMBER = 0x00000000;
  static const CHANGEKIND_DELETEMEMBER = 0x00000001;
  static const CHANGEKIND_SETNAMES = 0x00000002;
  static const CHANGEKIND_SETDOCUMENTATION = 0x00000003;
  static const CHANGEKIND_GENERAL = 0x00000004;
  static const CHANGEKIND_INVALIDATE = 0x00000005;
  static const CHANGEKIND_CHANGEFAILED = 0x00000006;
  static const CHANGEKIND_MAX = 0x00000007;
}

/// {@category Enum}
class REGKIND {
  static const REGKIND_DEFAULT = 0x00000000;
  static const REGKIND_REGISTER = 0x00000001;
  static const REGKIND_NONE = 0x00000002;
}
