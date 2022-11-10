// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tournament_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateTournamentRecord> _$createTournamentRecordSerializer =
    new _$CreateTournamentRecordSerializer();

class _$CreateTournamentRecordSerializer
    implements StructuredSerializer<CreateTournamentRecord> {
  @override
  final Iterable<Type> types = const [
    CreateTournamentRecord,
    _$CreateTournamentRecord
  ];
  @override
  final String wireName = 'CreateTournamentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CreateTournamentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.closingDate;
    if (value != null) {
      result
        ..add('closing_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.game;
    if (value != null) {
      result
        ..add('game')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prize;
    if (value != null) {
      result
        ..add('prize')
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
  CreateTournamentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateTournamentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'closing_date':
          result.closingDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'e-mail':
          result.eMail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'game':
          result.game = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prize':
          result.prize = serializers.deserialize(value,
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

class _$CreateTournamentRecord extends CreateTournamentRecord {
  @override
  final String? closingDate;
  @override
  final String? description;
  @override
  final String? eMail;
  @override
  final String? game;
  @override
  final String? prize;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CreateTournamentRecord(
          [void Function(CreateTournamentRecordBuilder)? updates]) =>
      (new CreateTournamentRecordBuilder()..update(updates))._build();

  _$CreateTournamentRecord._(
      {this.closingDate,
      this.description,
      this.eMail,
      this.game,
      this.prize,
      this.title,
      this.ffRef})
      : super._();

  @override
  CreateTournamentRecord rebuild(
          void Function(CreateTournamentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTournamentRecordBuilder toBuilder() =>
      new CreateTournamentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTournamentRecord &&
        closingDate == other.closingDate &&
        description == other.description &&
        eMail == other.eMail &&
        game == other.game &&
        prize == other.prize &&
        title == other.title &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, closingDate.hashCode), description.hashCode),
                        eMail.hashCode),
                    game.hashCode),
                prize.hashCode),
            title.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTournamentRecord')
          ..add('closingDate', closingDate)
          ..add('description', description)
          ..add('eMail', eMail)
          ..add('game', game)
          ..add('prize', prize)
          ..add('title', title)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CreateTournamentRecordBuilder
    implements Builder<CreateTournamentRecord, CreateTournamentRecordBuilder> {
  _$CreateTournamentRecord? _$v;

  String? _closingDate;
  String? get closingDate => _$this._closingDate;
  set closingDate(String? closingDate) => _$this._closingDate = closingDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _eMail;
  String? get eMail => _$this._eMail;
  set eMail(String? eMail) => _$this._eMail = eMail;

  String? _game;
  String? get game => _$this._game;
  set game(String? game) => _$this._game = game;

  String? _prize;
  String? get prize => _$this._prize;
  set prize(String? prize) => _$this._prize = prize;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CreateTournamentRecordBuilder() {
    CreateTournamentRecord._initializeBuilder(this);
  }

  CreateTournamentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _closingDate = $v.closingDate;
      _description = $v.description;
      _eMail = $v.eMail;
      _game = $v.game;
      _prize = $v.prize;
      _title = $v.title;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTournamentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTournamentRecord;
  }

  @override
  void update(void Function(CreateTournamentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTournamentRecord build() => _build();

  _$CreateTournamentRecord _build() {
    final _$result = _$v ??
        new _$CreateTournamentRecord._(
            closingDate: closingDate,
            description: description,
            eMail: eMail,
            game: game,
            prize: prize,
            title: title,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
