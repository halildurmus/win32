/// Provides information about an Assembly hash algorithm.
extension type const AssemblyHashAlgorithm(int _) implements int {
  /// The assembly hash algorithm is not specified.
  static const none = AssemblyHashAlgorithm(0);

  /// The assembly hash algorithm is MD5.
  static const md5 = AssemblyHashAlgorithm(0x8003);

  /// The assembly hash algorithm is SHA-1.
  static const sha1 = AssemblyHashAlgorithm(0x8004);
}

/// Provides information about an Assembly reference.
extension type const AssemblyFlags(int _) implements int {
  /// The assembly reference holds the full (unhashed) public key.
  static const publicKey = AssemblyFlags(0x1);

  /// The implementation of the referenced assembly used at runtime is not
  /// expected to match the version seen at compile time.
  static const retargetable = AssemblyFlags(0x100);

  /// The assembly contains Windows Runtime code.
  static const windowsRuntime = AssemblyFlags(0x200);

  /// Reserved.
  ///
  /// Just-In-Time (JIT) compiler optimization is disabled for the assembly.
  static const disableJitCompileOptimizer = AssemblyFlags(0x4000);

  /// Reserved.
  ///
  /// Just-In-Time (JIT) compiler tracking is enabled for the assembly.
  static const enableJitCompileTracking = AssemblyFlags(0x8000);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(AssemblyFlags other) => this & other == other;

  AssemblyFlags operator |(AssemblyFlags other) => AssemblyFlags(_ | other._);

  AssemblyFlags operator &(AssemblyFlags other) => AssemblyFlags(_ & other._);
}

/// Provides information about an event.
extension type const EventAttributes(int _) implements int {
  /// The event is special.
  static const specialName = EventAttributes(0x0200);

  /// CLI provides 'special' behavior, depending upon the name of the event.
  static const rtSpecialName = EventAttributes(0x0400);
}

/// Provides information about a field.
extension type const FieldAttributes(int _) implements int {
  /// Specifies the access level of a given field.
  static const fieldAccessMask = FieldAttributes(0x0007);

  /// The field cannot be referenced.
  static const compilerControlled = FieldAttributes(0x0000);

  /// The field is accessible only by the parent type.
  static const private = FieldAttributes(0x0001);

  /// The field is accessible only by subtypes in this assembly.
  static const famANDAssem = FieldAttributes(0x0002);

  /// The field is accessible throughout the assembly.
  static const assembly = FieldAttributes(0x0003);

  /// The field is accessible only by type and subtypes.
  static const family = FieldAttributes(0x0004);

  /// The field is accessible by subtypes anywhere, as well as throughout this
  /// assembly.
  static const famORAssem = FieldAttributes(0x0005);

  /// The field is accessible by any member for whom this scope is visible.
  static const public = FieldAttributes(0x0006);

  /// The field represents the defined type, or else it is per-instance.
  static const static = FieldAttributes(0x0010);

  /// The field is initialized only, and can be set only in the body of a
  /// constructor.
  static const initOnly = FieldAttributes(0x0020);

  /// The field's value is a compile-time (static or early bound) constant.
  static const literal = FieldAttributes(0x0040);

  /// Reserved.
  ///
  /// The field does not have to be serialized when the type is remoted.
  static const notSerialized = FieldAttributes(0x0080);

  /// The field is special.
  static const specialName = FieldAttributes(0x0200);

  /// Implementation is forwarded through PInvoke.
  static const pinvokeImpl = FieldAttributes(0x2000);

  /// CLI provides 'special' behavior, depending upon the name of the field.
  static const rtSpecialName = FieldAttributes(0x0400);

  /// The field has marshalling information.
  static const hasFieldMarshal = FieldAttributes(0x1000);

  /// The field has a default value.
  static const hasDefault = FieldAttributes(0x8000);

  /// The field has a relative virtual address (RVA).
  static const hasFieldRVA = FieldAttributes(0x0100);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(FieldAttributes other) => this & other == other;

  FieldAttributes operator |(FieldAttributes other) =>
      FieldAttributes(_ | other._);

  FieldAttributes operator &(FieldAttributes other) =>
      FieldAttributes(_ & other._);
}

/// Represents the field accessibility information.
enum FieldAccess {
  /// Specifies that the field cannot be referenced.
  compilerControlled,

  /// Specifies that the field is accessible only by its parent type.
  private,

  /// Specifies that the field is accessible by derived classes in its assembly.
  familyANDAssembly,

  /// Specifies that the field is accessible by all types in its assembly.
  assembly,

  /// Specifies that the field is accessible only by its type and derived
  /// classes.
  family,

  /// Specifies that the field is accessible by derived classes and by all types
  /// in its assembly.
  familyORAssembly,

  /// Specifies that the field is accessible by all types with visibility of
  /// this scope.
  public,
}

/// Provides information about a file.
extension type const FileAttributes(int _) implements int {
  /// The file is not a resource file.
  static const containsMetadata = FileAttributes(0x0000);

  /// The file is a resource file or other non-metadata-containing file.
  static const containsNoMetadata = FileAttributes(0x0001);
}

/// Provides information about a generic type parameter of a generic type or
/// method.
extension type const GenericParamAttributes(int _) implements int {
  /// Specifies flags about variance.
  static const varianceMask = GenericParamAttributes(0x0003);

  /// The generic parameter is non-variant and has no special constraints.
  static const none = GenericParamAttributes(0x0000);

  /// The generic parameter is covariant.
  static const covariant = GenericParamAttributes(0x0001);

  /// The generic parameter is contravariant.
  static const contravariant = GenericParamAttributes(0x0002);

  /// Specifies flags about special constraints.
  static const specialConstraintMask = GenericParamAttributes(0x001C);

  /// A type can be substituted for the generic type parameter only if it is a
  /// reference type.
  static const referenceTypeConstraint = GenericParamAttributes(0x0004);

  /// A type can be substituted for the generic type parameter only if it is a
  /// value type and is not nullable.
  static const notNullableValueTypeConstraint = GenericParamAttributes(0x0008);

  /// A type can be substituted for the generic type parameter only if it has a
  /// parameterless constructor.
  static const defaultConstructorConstraint = GenericParamAttributes(0x0010);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(GenericParamAttributes other) => this & other == other;

  GenericParamAttributes operator |(GenericParamAttributes other) =>
      GenericParamAttributes(_ | other._);

  GenericParamAttributes operator &(GenericParamAttributes other) =>
      GenericParamAttributes(_ & other._);
}

/// Represents the variance for a generic parameter.
enum Variance {
  /// Indicates the absence of variance.
  none,

  /// Indicates covariance.
  covariant,

  /// Indicates contravariance.
  contravariant,
}

/// Represents the special constraint on a generic parameter.
enum SpecialConstraint {
  /// Indicates the absence of a special constraint.
  none,

  /// Indicates that the generic parameter must be a reference type.
  referenceType,

  /// Indicates that the generic parameter must be a non-nullable value type.
  notNullableValueType,

  /// Indicates that the generic parameter must have a default constructor.
  defaultConstructor,
}

/// Provides information about a manifest resource.
extension type const ManifestResourceAttributes(int _) implements int {
  /// Specifies type visibility information.
  static const visibilityMask = ManifestResourceAttributes(0x0007);

  /// The resource is exported from the Assembly.
  static const public = ManifestResourceAttributes(0x0001);

  /// The resource is private to the Assembly.
  static const private = ManifestResourceAttributes(0x0002);
}

/// Represents the visibility of a manifest resource.
enum ManifestResourceVisibility {
  /// Specifies that the resource is exported from the assembly.
  public,

  /// Specifies that the resource is private to the assembly.
  private,
}

/// Provides information about a method.
extension type const MethodAttributes(int _) implements int {
  /// Specifies the access level of a given member.
  static const memberAccessMask = MethodAttributes(0x0007);

  /// The member cannot be referenced.
  static const compilerControlled = MethodAttributes(0x0000);

  /// The method is accessible only to the current class.
  static const private = MethodAttributes(0x0001);

  /// The method is accessible to members of this type and its derived types that are in this assembly only.
  static const famANDAssem = MethodAttributes(0x0002);

  /// The method is accessible to any class of this assembly.
  static const assembly = MethodAttributes(0x0003);

  /// The method is accessible only to members of this class and its derived
  /// classes.
  static const family = MethodAttributes(0x0004);

  /// The method is accessible to derived classes anywhere, as well as to any
  /// class in the assembly.
  static const famORAssem = MethodAttributes(0x0005);

  /// The method is accessible to any object for which this object is in scope.
  static const public = MethodAttributes(0x0006);

  /// The method is defined on the type; otherwise, it is defined per instance.
  static const static = MethodAttributes(0x0010);

  /// The method cannot be overridden.
  static const final$ = MethodAttributes(0x0020);

  /// The method is virtual.
  static const virtual = MethodAttributes(0x0040);

  /// The method hides by name+sig, else just by name.
  static const hideBySig = MethodAttributes(0x0080);

  /// Specifies vtable attributes.
  static const vtableLayoutMask = MethodAttributes(0x0100);

  /// The method reuses existing slot in vtable.
  static const reuseSlot = MethodAttributes(0x0000);

  /// The method always gets a new slot in the vtable.
  static const newSlot = MethodAttributes(0x0100);

  /// The method can only be overriden if also accessible.
  static const strict = MethodAttributes(0x0200);

  /// The method does not provide an implementation.
  static const abstract = MethodAttributes(0x0400);

  /// The method is special.
  static const specialName = MethodAttributes(0x0800);

  /// The method implementation is forwarded through PInvoke.
  static const pinvokeImpl = MethodAttributes(0x2000);

  /// Reserved.
  ///
  /// The method is exported by thunk to unmanaged code.
  static const unmanagedExport = MethodAttributes(0x0008);

  /// CLI provides 'special' behavior, depending upon the name of the method.
  static const rtSpecialName = MethodAttributes(0x1000);

  /// The method has security associate with it.
  static const hasSecurity = MethodAttributes(0x4000);

  /// The method calls another method containing security code.
  static const requireSecObject = MethodAttributes(0x8000);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(MethodAttributes other) => this & other == other;

  MethodAttributes operator |(MethodAttributes other) =>
      MethodAttributes(_ | other._);

  MethodAttributes operator &(MethodAttributes other) =>
      MethodAttributes(_ & other._);
}

/// Represents the member accessibility information.
enum MemberAccess {
  /// Specifies that the member cannot be referenced.
  compilerControlled,

  /// Specifies that the member is accessible only by the parent type.
  private,

  /// Specifies that the member is accessible by subtypes only in this assembly.
  familyANDAssembly,

  /// Specifies that the member is accessibly by anyone in the assembly.
  assembly,

  /// Specifies that the member is accessible only by type and subtypes.
  family,

  /// Specifies that the member is accessible by derived classes and by other
  /// types in its assembly.
  familyORAssembly,

  /// Specifies that the member is accessible by all types with access to the
  /// scope.
  public,
}

/// Represents the virtual table layout.
enum VTableLayout {
  /// Specifies that the slot used for this method in the virtual table be
  /// reused.
  ///
  /// This is the default.
  reuseSlot,

  /// Specifies that the method always gets a new slot in the virtual table.
  newSlot,
}

/// Provides information about a method implementation.
extension type const MethodImplAttributes(int _) implements int {
  /// Specifies flags about code type.
  static const codeTypeMask = MethodImplAttributes(0x0003);

  /// The method implementation is in Microsoft intermediate language (MSIL).
  static const il = MethodImplAttributes(0x0000);

  /// The method implementation is native.
  static const native = MethodImplAttributes(0x0001);

  /// Reserved.
  ///
  /// The method implementation is in Optimized Intermediate Language (OPTIL).
  static const optIL = MethodImplAttributes(0x0002);

  /// The method implementation is provided by the runtime.
  static const runtime = MethodImplAttributes(0x0003);

  /// Specifies whether the method is implemented in managed or unmanaged code.
  static const managedMask = MethodImplAttributes(0x0004);

  /// The method is implemented in unmanaged code.
  static const unmanaged = MethodImplAttributes(0x00004);

  /// The method is implemented in managed code.
  static const managed = MethodImplAttributes(0x0000);

  /// The method is not defined.
  static const forwardRef = MethodImplAttributes(0x0010);

  /// Reserved.
  ///
  /// The method signature is exported exactly as declared.
  static const preserveSig = MethodImplAttributes(0x0080);

  /// Reserved.
  ///
  /// Specifies an internal call.
  static const internalCall = MethodImplAttributes(0x1000);

  /// The method is single-threaded through the body.
  static const synchronized = MethodImplAttributes(0x0020);

  /// The method cannot be inlined.
  static const noInlining = MethodImplAttributes(0x0008);

  /// Range check value.
  static const maxMethodImplVal = MethodImplAttributes(0xFFFF);

  /// The method will not be optimized when generating native code.
  static const noOptimization = MethodImplAttributes(0x0040);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(MethodImplAttributes other) => this & other == other;

  MethodImplAttributes operator |(MethodImplAttributes other) =>
      MethodImplAttributes(_ | other._);

  MethodImplAttributes operator &(MethodImplAttributes other) =>
      MethodImplAttributes(_ & other._);
}

/// Represents the code type of contained code.
enum CodeType {
  /// Specifies that the method implementation is Microsoft intermediate
  /// language (MSIL).
  msil,

  /// Specifies that the method implementation is native.
  native,

  /// Specifies that the method implementation is OPTIL.
  optIL,

  /// Specifies that the method implementation is provided by the common
  /// language runtime.
  runtime,
}

/// Provides information about a method's semantics.
extension type const MethodSemanticsAttributes(int _) implements int {
  /// Setter for property.
  static const setter = MethodSemanticsAttributes(0x0001);

  /// Getter for property.
  static const getter = MethodSemanticsAttributes(0x0002);

  /// Other method for property or event.
  static const other = MethodSemanticsAttributes(0x0004);

  /// AddOn method for event.
  ///
  /// This refers to the required `add_` method for events.
  static const addOn = MethodSemanticsAttributes(0x0008);

  /// RemoveOn method for event.
  ///
  /// This refers to the required `remove_` method for events.
  static const removeOn = MethodSemanticsAttributes(0x0010);

  /// Fire method for event.
  ///
  /// This refers to the optional `raise_` method for events.
  static const fire = MethodSemanticsAttributes(0x0020);
}

/// Provides information about a parameter.
extension type const ParamAttributes(int _) implements int {
  /// The parameter is an input parameter.
  static const in$ = ParamAttributes(0x0001);

  /// The parameter is an output parameter.
  static const out = ParamAttributes(0x0002);

  /// The parameter is optional.
  static const optional = ParamAttributes(0x0010);

  /// The parameter has a default value.
  static const hasDefault = ParamAttributes(0x1000);

  /// The parameter has field marshaling information.
  static const hasFieldMarshal = ParamAttributes(0x2000);

  /// Reserved.
  ///
  /// The parameter is unused.
  static const unused = ParamAttributes(0xCFE0);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(ParamAttributes other) => this & other == other;

  ParamAttributes operator |(ParamAttributes other) =>
      ParamAttributes(_ | other._);

  ParamAttributes operator &(ParamAttributes other) =>
      ParamAttributes(_ & other._);
}

/// Provides information about Platform Invocation (P/Invoke) methods.
extension type const PInvokeAttributes(int _) implements int {
  /// Indicates that the P/Invoke entry point name should be used as-is.
  static const noMangle = PInvokeAttributes(0x0001);

  /// Specifies the character set encoding.
  static const charSetMask = PInvokeAttributes(0x0002);

  /// The character set is not specified.
  static const charSetNotSpec = PInvokeAttributes(0x0000);

  /// Method uses ANSI character set for string marshaling.
  static const charSetAnsi = PInvokeAttributes(0x0002);

  /// Method uses Unicode character set for string marshaling.
  static const charSetUnicode = PInvokeAttributes(0x0004);

  /// Method uses the platform default character set at runtime.
  static const charSetAuto = PInvokeAttributes(0x0006);

  /// The target method sets the _last error_ on failure.
  ///
  /// The runtime should invoke `GetLastError()` (Windows) or equivalent
  /// after the method call if needed.
  static const supportsLastError = PInvokeAttributes(0x40);

  /// Specifies the calling convention.
  static const callConvMask = PInvokeAttributes(0x0700);

  /// Platform API default calling convention (typically `StdCall` on Windows).
  static const callConvPlatformApi = PInvokeAttributes(0x0100);

  /// C declaration calling convention (`cdecl`), where the caller cleans the
  /// stack.
  static const callConvCdecl = PInvokeAttributes(0x0200);

  /// Standard calling convention (`stdcall`), where the callee cleans the
  /// stack.
  static const callConvStdCall = PInvokeAttributes(0x0300);

  /// `thiscall` convention, typically used for calling C++ instance methods.
  static const callConvThisCall = PInvokeAttributes(0x0400);

  /// `fastcall` convention, where arguments are passed via registers when
  /// possible.
  static const callConvFastCall = PInvokeAttributes(0x0500);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(PInvokeAttributes other) => this & other == other;

  PInvokeAttributes operator |(PInvokeAttributes other) =>
      PInvokeAttributes(_ | other._);

  PInvokeAttributes operator &(PInvokeAttributes other) =>
      PInvokeAttributes(_ & other._);
}

/// Represents the encoding for marshalling P/Invoke function strings.
enum CharSet {
  /// Reserved.
  notSpecified,

  /// Marshal strings as multiple-byte character strings.
  ansi,

  /// Marshal strings as Unicode 2-byte characters.
  unicode,

  /// Automatically marshal strings appropriately for the target operating
  /// system.
  ///
  /// The default is Unicode on Windows NT, Windows 2000, Windows XP, and the
  /// Windows Server 2003 family; the default is ANSI on Windows 98 and
  /// Windows Me.
  auto,
}

/// Represents the platform calling convention.
enum CallConv {
  /// Use the default platform calling convention.
  ///
  /// For example, on Windows the default is StdCall and on Windows CE .NET it
  /// is Cdecl.
  platformApi,

  /// Use the Cdecl calling convention.
  ///
  /// In this case, the caller cleans the stack. This enables calling functions
  /// with varargs (that is, functions that accept a variable number of
  /// parameters).
  cdecl,

  /// Use the StdCall calling convention.
  ///
  /// In this case, the callee cleans the stack. This is the default convention
  /// for calling unmanaged functions with platform invoke.
  stdcall,

  /// Use the ThisCall calling convention.
  ///
  /// In this case, the first parameter is the this pointer and is stored in
  /// register ECX. Other parameters are pushed on the stack. The ThisCall
  /// calling convention is used to call methods on classes exported from an
  /// unmanaged DLL.
  thiscall,

  /// Reserved.
  fastcall,
}

/// Specifies the security actions that can be performed using declarative
/// security.
enum SecurityAction {
  /// All callers higher in the call stack are required to have been granted the
  /// permission specified by the current permission object.
  demand._(2),

  /// The calling code can access the resource identified by the current
  /// permission object, even if callers higher in the stack have not been
  /// granted permission to access the resource.
  assert$._(3),

  /// The ability to access the resource specified by the current permission
  /// object is denied to callers, even if they have been granted permission t
  /// access it.
  deny._(4),

  /// Only the resources specified by this permission object can be accessed,
  /// even if the code has been granted permission to access other resources.
  permitOnly._(5),

  /// The immediate caller is required to have been granted the specified
  /// permission.
  linkDemand._(6),

  /// The derived class inheriting the class or overriding a method is required
  /// to have been granted the specified permission.
  inheritanceDemand._(7),

  /// The request for the minimum permissions required for code to run.
  ///
  /// This action can only be used within the scope of the assembly.
  requestMinimum._(8),

  /// The request for additional permissions that are optional (not required to
  /// run).
  ///
  /// This request implicitly refuses all other permissions not specifically
  /// requested.
  ///
  /// This action can only be used within the scope of the assembly.
  requestOptional._(9),

  /// The request that permissions that might be misused will not be granted to
  /// the calling code.
  ///
  /// This action can only be used within the scope of the assembly.
  requestRefused._(10);

  const SecurityAction._(this.value);

  /// Creates a [SecurityAction] from the given [value].
  factory SecurityAction.fromValue(int value) => switch (value) {
    2 => demand,
    3 => assert$,
    4 => deny,
    5 => permitOnly,
    6 => linkDemand,
    7 => inheritanceDemand,
    8 => requestMinimum,
    9 => requestOptional,
    10 => requestRefused,
    _ => throw ArgumentError.value(value, 'value', 'Unknown value'),
  };

  /// The value of the security action.
  final int value;
}

/// Provides information about a property.
extension type const PropertyAttributes(int _) implements int {
  /// The property is special.
  static const specialName = PropertyAttributes(0x0200);

  /// CLI provides 'special' behavior, depending upon the name of the property.
  static const rtSpecialName = PropertyAttributes(0x0400);

  /// The property has a default value.
  static const hasDefault = PropertyAttributes(0x1000);

  /// Reserved.
  ///
  /// The property is unused.
  static const unused = PropertyAttributes(0xE9FF);
}

/// Provides information about a type.
extension type const TypeAttributes(int _) implements int {
  /// Specifies type visibility information.
  static const visibilityMask = TypeAttributes(0x00000007);

  /// The class is not public.
  static const notPublic = TypeAttributes(0x00000000);

  /// The class is public.
  static const public = TypeAttributes(0x00000001);

  /// The class is nested with public visibility.
  static const nestedPublic = TypeAttributes(0x00000002);

  /// The class is nested with private visibility.
  static const nestedPrivate = TypeAttributes(0x00000003);

  /// The class is nested with family visibility, and is thus accessible only by
  /// methods within its own type and any derived types.
  static const nestedFamily = TypeAttributes(0x00000004);

  /// The class is nested with assembly visibility, and is thus accessible only
  /// by methods within its assembly.
  static const nestedAssembly = TypeAttributes(0x00000005);

  /// The class is nested with assembly and family visibility, and is thus
  /// accessible only by methods lying in the intersection of its family and
  /// assembly.
  static const nestedFamANDAssem = TypeAttributes(0x00000006);

  /// The class is nested with family or assembly visibility, and is thus
  /// accessible only by methods lying in the union of its family and assembly.
  static const nestedFamORAssem = TypeAttributes(0x00000007);

  /// Specifies class layout information.
  static const layoutMask = TypeAttributes(0x00000018);

  static const autoLayout = TypeAttributes(0x00000000);

  /// The class fields are laid out sequentially, in the order that the fields
  /// were emitted to the metadata.
  static const sequentialLayout = TypeAttributes(0x00000008);

  /// The class fields are laid out at the specified offsets.
  static const explicitLayout = TypeAttributes(0x00000010);

  /// Specifies class semantics information; the current class is contextful
  /// (else agile).
  static const classSemanticsMask = TypeAttributes(0x00000020);

  /// The type is a class.
  static const class$ = TypeAttributes(0x00000000);

  /// The type is an interface.
  static const interface = TypeAttributes(0x00000020);

  /// The type is abstract.
  static const abstract = TypeAttributes(0x00000080);

  /// The class is concrete and cannot be extended.
  static const sealed = TypeAttributes(0x00000100);

  /// The class is special in a way denoted by the name.
  static const specialName = TypeAttributes(0x00000400);

  /// The class or interface is imported from another module.
  static const import = TypeAttributes(0x00001000);

  /// Reserved.
  ///
  /// The class can be serialized.
  static const serializable = TypeAttributes(0x00002000);

  /// Use this mask to retrieve string information for native interop.
  static const stringFormatMask = TypeAttributes(0x00030000);

  /// LPSTR is interpreted as ANSI.
  static const ansiClass = TypeAttributes(0x00000000);

  /// LPSTR is interpreted as Unicode.
  static const unicodeClass = TypeAttributes(0x00010000);

  /// LPSTR is interpreted automatically.
  static const autoClass = TypeAttributes(0x00020000);

  /// A non-standard encoding specified by [customStringFormatMask].
  static const customFormatClass = TypeAttributes(0x00030000);

  /// Use this mask to retrieve non-standard encoding information for native
  /// interop.
  ///
  /// The meaning of the values of these 2 bits is unspecified.
  static const customStringFormatMask = TypeAttributes(0x00C00000);

  /// Initialize the class before first static field access.
  static const beforeFieldInit = TypeAttributes(0x00100000);

  /// CLI provides 'special' behavior, depending upon the name of the Type.
  static const rtSpecialName = TypeAttributes(0x00000800);

  /// Type has security associate with it.
  static const hasSecurity = TypeAttributes(0x00040000);

  /// This ExportedType entry is a type forwarder.
  static const isTypeForwarder = TypeAttributes(0x00200000);

  /// Specifies a Windows Runtime type.
  static const windowsRuntime = TypeAttributes(0x00004000);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(TypeAttributes other) => this & other == other;

  TypeAttributes operator |(TypeAttributes other) =>
      TypeAttributes(_ | other._);

  TypeAttributes operator &(TypeAttributes other) =>
      TypeAttributes(_ & other._);
}

/// Represents the visibility of a type to other types.
enum TypeVisibility {
  /// Specifies that the type is not in public scope.
  notPublic,

  /// Specifies that the type is in public scope.
  public,

  /// Specifies that the type is nested with public visibility.
  nestedPublic,

  /// Specifies that the type is nested with private visibility.
  nestedPrivate,

  /// Specifies that the type is nested with family visibility.
  nestedFamily,

  /// Specifies that the type is nested with assembly visibility.
  nestedAssembly,

  /// Specifies that the type is nested with family and assembly visibility.
  nestedFamilyANDAssembly,

  /// Specifies that the type is nested with family or assembly visibility.
  nestedFamilyORAssembly,
}

/// Describes the layout of the fields within the type.
enum TypeLayout {
  /// Specifies that the fields of this type are laid out automatically.
  auto,

  /// Specifies that the fields of this type are laid out sequentially.
  sequential,

  /// Specifies that field layout is supplied explicitly.
  explicit,
}

/// Represents the semantics of a type.
enum TypeSemantics {
  /// Specifies that the type is a class.
  class$,

  /// Specifies that the type is an interface.
  interface,
}

/// Defines the interpretation rules for string types.
enum StringFormat {
  /// Specifies that this type interprets an LPTSTR as ANSI.
  ansi,

  /// Specifies that this type interprets an LPTSTR as Unicode.
  unicode,

  /// Specifies that this type interprets an LPTSTR automatically.
  auto,

  /// Specifies that the type has a non-standard encoding, as specified by
  /// CustomFormatMask.
  custom,
}
