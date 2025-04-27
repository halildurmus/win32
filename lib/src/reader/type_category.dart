/// Represents the semantic classification of a `TypeDef`.
enum TypeCategory {
  /// A type that derives from `System.Attribute`, used to annotate program
  /// elements with declarative information.
  attribute,

  /// A reference type that derives from another class or directly from
  /// `System.Object`, typically supporting inheritance and polymorphism.
  class$,

  /// A value type that inherits from `System.Enum`, providing a set of named
  /// constants backed by an underlying primitive type.
  enum$,

  /// A reference type that encapsulates a method reference, serving a role
  /// similar to function pointers in languages such as C++.
  delegate,

  /// A contract-based type that defines a set of methods, properties, or events
  /// without providing implementations, specifying capabilities that a class or
  /// struct must fulfill.
  interface,

  /// A value type that derives implicitly from `System.ValueType`, which in
  /// turn is derived from `System.Object`.
  struct,
}
