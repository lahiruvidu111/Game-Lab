// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_fixing_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ErrorFixingRecord> _$errorFixingRecordSerializer =
    new _$ErrorFixingRecordSerializer();

class _$ErrorFixingRecordSerializer
    implements StructuredSerializer<ErrorFixingRecord> {
  @override
  final Iterable<Type> types = const [ErrorFixingRecord, _$ErrorFixingRecord];
  @override
  final String wireName = 'ErrorFixingRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ErrorFixingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eMail;
    if (value != null) {
      result
        ..add('e-mail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.problem;
    if (value != null) {
      result
        ..add('problem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ErrorFixingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ErrorFixingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'e-mail':
          result.eMail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'problem':
          result.problem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ErrorFixingRecord extends ErrorFixingRecord {
  @override
  final String? eMail;
  @override
  final String? problem;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ErrorFixingRecord(
          [void Function(ErrorFixingRecordBuilder)? updates]) =>
      (new ErrorFixingRecordBuilder()..update(updates))._build();

  _$ErrorFixingRecord._({this.eMail, this.problem, this.title, this.ffRef})
      : super._();

  @override
  ErrorFixingRecord rebuild(void Function(ErrorFixingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorFixingRecordBuilder toBuilder() =>
      new ErrorFixingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorFixingRecord &&
        eMail == other.eMail &&
        problem == other.problem &&
        title == other.title &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, eMail.hashCode), problem.hashCode), title.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorFixingRecord')
          ..add('eMail', eMail)
          ..add('problem', problem)
          ..add('title', title)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ErrorFixingRecordBuilder
    implements Builder<ErrorFixingRecord, ErrorFixingRecordBuilder> {
  _$ErrorFixingRecord? _$v;

  String? _eMail;
  String? get eMail => _$this._eMail;
  set eMail(String? eMail) => _$this._eMail = eMail;

  String? _problem;
  String? get problem => _$this._problem;
  set problem(String? problem) => _$this._problem = problem;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ErrorFixingRecordBuilder() {
    ErrorFixingRecord._initializeBuilder(this);
  }

  ErrorFixingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eMail = $v.eMail;
      _problem = $v.problem;
      _title = $v.title;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorFixingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorFixingRecord;
  }

  @override
  void update(void Function(ErrorFixingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorFixingRecord build() => _build();

  _$ErrorFixingRecord _build() {
    final _$result = _$v ??
        new _$ErrorFixingRecord._(
            eMail: eMail, problem: problem, title: title, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
