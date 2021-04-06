/// {@category Enum}
class BaseValueSource {
  static const BaseValueSourceUnknown = 0x00000000;
  static const BaseValueSourceDefault = 0x00000001;
  static const BaseValueSourceBuiltInStyle = 0x00000002;
  static const BaseValueSourceStyle = 0x00000003;
  static const BaseValueSourceLocal = 0x00000004;
  static const Inherited = 0x00000005;
  static const DefaultStyleTrigger = 0x00000006;
  static const TemplateTrigger = 0x00000007;
  static const StyleTrigger = 0x00000008;
  static const ImplicitStyleReference = 0x00000009;
  static const ParentTemplate = 0x0000000a;
  static const ParentTemplateTrigger = 0x0000000b;
  static const Animation = 0x0000000c;
  static const Coercion = 0x0000000d;
  static const BaseValueSourceVisualState = 0x0000000e;
}

/// {@category Enum}
class MetadataBit {
  static const None = 0x00000000;
  static const IsValueHandle = 0x00000001;
  static const IsPropertyReadOnly = 0x00000002;
  static const IsValueCollection = 0x00000004;
  static const IsValueCollectionReadOnly = 0x00000008;
  static const IsValueBindingExpression = 0x00000010;
  static const IsValueNull = 0x00000020;
  static const IsValueHandleAndEvaluatedValue = 0x00000040;
}

/// {@category Enum}
class RenderTargetBitmapOptions {
  static const RenderTarget = 0x00000000;
  static const RenderTargetAndChildren = 0x00000001;
}

/// {@category Enum}
class ResourceType {
  static const ResourceTypeStatic = 0x00000000;
  static const ResourceTypeTheme = 0x00000001;
}

/// {@category Enum}
class VisualElementState {
  static const ErrorResolved = 0x00000000;
  static const ErrorResourceNotFound = 0x00000001;
  static const ErrorInvalidResource = 0x00000002;
}

/// {@category Enum}
class VisualMutationType {
  static const Add = 0x00000000;
  static const Remove = 0x00000001;
}

