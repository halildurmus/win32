import 'allocation.dart';

/// Defines a rule that determines whether an [Allocation] should be ignored.
///
/// Leak filters allow selective suppression of allocations when analyzing
/// leak reports. They are composable, comparable, and automatically simplified
/// when combined.
///
/// Filters can be constructed using the provided factory constructors and
/// combined using logical operations:
/// - [and] / `&` → logical AND
/// - [or] / `|` → logical OR
/// - [not] → logical NOT
sealed class LeakFilter {
  /// Base constructor for subclasses.
  const LeakFilter();

  /// Creates a filter that ignores no allocations.
  const factory LeakFilter.ignoreNone() = IgnoreNoneFilter;

  /// Creates a filter that ignores all allocations.
  const factory LeakFilter.ignoreAll() = IgnoreAllFilter;

  /// Creates a filter that ignores allocations whose address is contained in
  /// [addresses].
  factory LeakFilter.ignoreAddresses(Set<int> addresses) = AddressesFilter;

  /// Creates a filter that ignores allocations whose stack trace contains
  /// [pattern].
  const factory LeakFilter.ignoreStackContains(Pattern pattern) =
      StackContainsFilter;

  /// Creates a filter that ignores allocations whose type is contained in
  /// [types].
  factory LeakFilter.ignoreTypes(Set<String> types) = TypesFilter;

  /// Returns `true` if the given [allocation] should be ignored.
  bool ignore(Allocation allocation);

  /// Returns a filter representing the logical AND of this filter and [other].
  ///
  /// The resulting filter ignores an allocation only if both filters ignore it.
  LeakFilter and(LeakFilter other) => _and([this, other]);

  /// Returns a filter representing the logical OR of this filter and [other].
  ///
  /// The resulting filter ignores an allocation if either filter ignores it.
  LeakFilter or(LeakFilter other) => _or([this, other]);

  /// Returns the logical negation of this filter.
  ///
  /// Allocations ignored by this filter will be included, and vice versa.
  LeakFilter not() => _simplify(NotFilter(this));

  /// Logical AND operator alias for [and].
  LeakFilter operator &(LeakFilter other) => and(other);

  /// Logical OR operator alias for [or].
  LeakFilter operator |(LeakFilter other) => or(other);

  /// Returns a human-readable description of this filter.
  @override
  String toString();
}

/// A filter that ignores no allocations.
final class IgnoreNoneFilter extends LeakFilter {
  /// Creates a filter that never ignores allocations.
  const IgnoreNoneFilter();

  @override
  bool ignore(Allocation _) => false;

  @override
  String toString() => 'ignore none';
}

/// A filter that ignores all allocations.
final class IgnoreAllFilter extends LeakFilter {
  /// Creates a filter that ignores every allocation.
  const IgnoreAllFilter();

  @override
  bool ignore(Allocation _) => true;

  @override
  String toString() => 'ignore all';
}

/// Ignores allocations whose address matches one of a set of values.
///
/// The address set is canonicalized to ensure stable equality and hashing.
final class AddressesFilter extends LeakFilter with _StructuralEquality {
  /// Creates an address filter.
  ///
  /// The provided [addresses] set is normalized into an immutable, sorted
  /// representation.
  AddressesFilter(Set<int> addresses) : addresses = _canonSet(addresses);

  /// Addresses to ignore.
  final Set<int> addresses;

  @override
  bool ignore(Allocation allocation) => addresses.contains(allocation.address);

  @override
  bool operator ==(Object other) =>
      other is AddressesFilter && _setEquals(other.addresses, addresses);

  @override
  int get hashCode => Object.hashAll(addresses);

  @override
  List<Object?> get _$parts => [addresses];

  @override
  String toString() =>
      'address is in: "${addresses.map((e) => e.toRadixString(16)).join(", ")}"';
}

/// Ignores allocations whose stack trace contains a pattern.
///
/// Pattern matching supports both strings and regular expressions.
final class StackContainsFilter extends LeakFilter with _StructuralEquality {
  /// Creates a stack-content filter.
  const StackContainsFilter(this.pattern);

  /// Pattern searched within stack traces.
  final Pattern pattern;

  @override
  bool ignore(Allocation allocation) => allocation.stack.contains(pattern);

  @override
  List<Object?> get _$parts => [pattern];

  @override
  String toString() => 'stack contains "$pattern"';
}

/// Ignores allocations whose type matches one of a set of values.
///
/// The type set is canonicalized for stable comparison semantics.
final class TypesFilter extends LeakFilter with _StructuralEquality {
  /// Creates a type filter.
  TypesFilter(Set<String> types) : types = _canonSet(types);

  /// Allocation types to ignore.
  final Set<String> types;

  @override
  bool ignore(Allocation allocation) => types.contains(allocation.type);

  @override
  bool operator ==(Object other) =>
      other is TypesFilter && _setEquals(other.types, types);

  @override
  int get hashCode => Object.hashAll(types);

  @override
  List<Object?> get _$parts => [types];

  @override
  String toString() => 'type is in: "${types.join(", ")}"';
}

/// Logical AND combination of multiple filters.
///
/// An allocation is ignored only if all contained filters ignore it.
final class AndFilter extends LeakFilter with _StructuralEquality {
  /// Creates an AND filter.
  const AndFilter._(this.filters);

  /// Component filters.
  final List<LeakFilter> filters;

  @override
  bool ignore(Allocation allocation) =>
      filters.every((f) => f.ignore(allocation));

  @override
  List<Object?> get _$parts => filters;

  @override
  String toString() {
    final parts = filters.map((f) => f.toString()).toList()..sort();
    return parts.join(' AND ');
  }
}

/// Logical OR combination of multiple filters.
///
/// An allocation is ignored if any contained filter ignores it.
final class OrFilter extends LeakFilter with _StructuralEquality {
  /// Creates an OR filter.
  const OrFilter._(this.filters);

  /// Component filters.
  final List<LeakFilter> filters;

  @override
  bool ignore(Allocation allocation) =>
      filters.any((f) => f.ignore(allocation));

  @override
  List<Object?> get _$parts => filters;

  @override
  String toString() {
    final parts = filters.map((f) => f.toString()).toList()..sort();
    return parts.join(' OR ');
  }
}

/// Logical negation of a filter.
///
/// The result ignores an allocation only if the inner filter does not ignore
/// it.
final class NotFilter extends LeakFilter with _StructuralEquality {
  /// Creates a negated filter.
  const NotFilter(this.inner);

  /// Inner filter being negated.
  final LeakFilter inner;

  @override
  bool ignore(Allocation allocation) => !inner.ignore(allocation);

  @override
  List<Object?> get _$parts => [inner];

  @override
  String toString() => 'NOT ($inner)';
}

/// Mixin providing structural equality based on a list of comparison parts.
///
/// Classes using this mixin must expose their comparison fields through
/// [_$parts]. Equality and hash codes are then derived automatically.
mixin _StructuralEquality {
  /// Components used for equality comparison.
  List<Object?> get _$parts;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other.runtimeType == runtimeType &&
          other is _StructuralEquality &&
          _listEquals(_$parts, other._$parts);

  @override
  int get hashCode => Object.hash(runtimeType, Object.hashAll(_$parts));
}

/// Returns an immutable, sorted version of [input].
///
/// Empty sets are canonicalized to a shared constant instance.
Set<T> _canonSet<T extends Comparable>(Set<T> input) =>
    input.isEmpty ? const {} : .unmodifiable(input.toList()..sort());

/// Compares two lists for element-wise equality.
bool _listEquals(List<Object?> a, List<Object?> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

/// Compares two sets for equality.
bool _setEquals<T>(Set<T> a, Set<T> b) {
  if (a.length != b.length) return false;
  for (final element in a) {
    if (!b.contains(element)) return false;
  }
  return true;
}

/// Combines filters with logical AND and simplifies the result.
///
/// Simplifications include:
/// - flattening nested AND filters
/// - removing duplicates
/// - eliminating neutral elements
/// - collapsing trivial results
LeakFilter _and(List<LeakFilter> input) {
  final flat = <LeakFilter>[];

  for (final f in input.map(_simplify)) {
    switch (f) {
      case IgnoreNoneFilter():
        return const IgnoreNoneFilter();

      case IgnoreAllFilter():
        continue;

      case AndFilter(:final filters):
        flat.addAll(filters);

      default:
        flat.add(f);
    }
  }

  final unique = {...flat}.toList()
    ..sort((a, b) => a.hashCode.compareTo(b.hashCode));

  return switch (unique.length) {
    0 => const IgnoreAllFilter(),
    1 => unique.first,
    _ => AndFilter._(unique),
  };
}

/// Combines filters with logical OR and simplifies the result.
///
/// Simplifications include:
/// - flattening nested OR filters
/// - removing duplicates
/// - eliminating neutral elements
/// - collapsing trivial results
LeakFilter _or(List<LeakFilter> input) {
  final flat = <LeakFilter>[];

  for (final f in input.map(_simplify)) {
    switch (f) {
      case IgnoreAllFilter():
        return const IgnoreAllFilter();

      case IgnoreNoneFilter():
        continue;

      case OrFilter(:final filters):
        flat.addAll(filters);

      default:
        flat.add(f);
    }
  }

  final unique = {...flat}.toList()
    ..sort((a, b) => a.hashCode.compareTo(b.hashCode));

  return switch (unique.length) {
    0 => const IgnoreNoneFilter(),
    1 => unique.first,
    _ => OrFilter._(unique),
  };
}

/// Simplifies a filter expression tree.
///
/// Performs logical reductions such as:
/// - removing redundant wrappers
/// - eliminating double negation
/// - applying De Morgan’s laws
/// - simplifying nested compositions
LeakFilter _simplify(LeakFilter f) {
  switch (f) {
    case AndFilter(:final filters):
      return _and(filters);

    case OrFilter(:final filters):
      return _or(filters);

    case NotFilter(:final inner):
      final s = _simplify(inner);

      return switch (s) {
        IgnoreAllFilter() => const IgnoreNoneFilter(),
        IgnoreNoneFilter() => const IgnoreAllFilter(),
        NotFilter(:final inner) => inner,

        /* De Morgan */
        AndFilter(:final filters) => _or(
          filters.map((e) => _simplify(NotFilter(e))).toList(),
        ),

        OrFilter(:final filters) => _and(
          filters.map((e) => _simplify(NotFilter(e))).toList(),
        ),

        _ => NotFilter(s),
      };

    default:
      return f;
  }
}
