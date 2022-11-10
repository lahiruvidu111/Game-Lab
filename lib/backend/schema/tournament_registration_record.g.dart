// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_registration_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TournamentRegistrationRecord>
    _$tournamentRegistrationRecordSerializer =
    new _$TournamentRegistrationRecordSerializer();

class _$TournamentRegistrationRecordSerializer
    implements StructuredSerializer<TournamentRegistrationRecord> {
  @override
  final Iterable<Type> types = const [
    TournamentRegistrationRecord,
    _$TournamentRegistrationRecord
  ];
  @override
  final String wireName = 'TournamentRegistrationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TournamentRegistrationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eMail;
    if (value != null) {
      result
        ..add('e-mail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inGameId;
    if (value != null) {
      result
        ..add('in-game_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactNo;
    if (value != null) {
      result
        ..add('contact_no')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  TournamentRegistrationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TournamentRegistrationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'e-mail':
          result.eMail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'in-game_id':
          result.inGameId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contact_no':
          result.contactNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$TournamentRegistrationRecord extends TournamentRegistrationRecord {
  @override
  final String? name;
  @override
  final String? eMail;
  @override
  final String? inGameId;
  @override
  final int? contactNo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TournamentRegistrationRecord(
          [void Function(TournamentRegistrationRecordBuilder)? updates]) =>
      (new TournamentRegistrationRecordBuilder()..update(updates))._build();

  _$TournamentRegistrationRecord._(
      {this.name, this.eMail, this.inGameId, this.contactNo, this.ffRef})
      : super._();

  @override
  TournamentRegistrationRecord rebuild(
          void Function(TournamentRegistrationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TournamentRegistrationRecordBuilder toBuilder() =>
      new TournamentRegistrationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TournamentRegistrationRecord &&
        name == other.name &&
        eMail == other.eMail &&
        inGameId == other.inGameId &&
        contactNo == other.contactNo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), eMail.hashCode), inGameId.hashCode),
            contactNo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TournamentRegistrationRecord')
          ..add('name', name)
          ..add('eMail', eMail)
          ..add('inGameId', inGameId)
          ..add('contactNo', contactNo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TournamentRegistrationRecordBuilder
    implements
        Builder<TournamentRegistrationRecord,
            TournamentRegistrationRecordBuilder> {
  _$TournamentRegistrationRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _eMail;
  String? get eMail => _$this._eMail;
  set eMail(String? eMail) => _$this._eMail = eMail;

  String? _inGameId;
  String? get inGameId => _$this._inGameId;
  set inGameId(String? inGameId) => _$this._inGameId = inGameId;

  int? _contactNo;
  int? get contactNo => _$this._contactNo;
  set contactNo(int? contactNo) => _$this._contactNo = contactNo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TournamentRegistrationRecordBuilder() {
    TournamentRegistrationRecord._initializeBuilder(this);
  }

  TournamentRegistrationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _eMail = $v.eMail;
      _inGameId = $v.inGameId;
      _contactNo = $v.contactNo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TournamentRegistrationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TournamentRegistrationRecord;
  }

  @override
  void update(void Function(TournamentRegistrationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TournamentRegistrationRecord build() => _build();

  _$TournamentRegistrationRecord _build() {
    final _$result = _$v ??
        new _$TournamentRegistrationRecord._(
            name: name,
            eMail: eMail,
            inGameId: inGameId,
            contactNo: contactNo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
