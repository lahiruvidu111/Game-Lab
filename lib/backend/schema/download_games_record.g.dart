// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_games_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DownloadGamesRecord> _$downloadGamesRecordSerializer =
    new _$DownloadGamesRecordSerializer();

class _$DownloadGamesRecordSerializer
    implements StructuredSerializer<DownloadGamesRecord> {
  @override
  final Iterable<Type> types = const [
    DownloadGamesRecord,
    _$DownloadGamesRecord
  ];
  @override
  final String wireName = 'DownloadGamesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DownloadGamesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.details;
    if (value != null) {
      result
        ..add('details')
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
    value = object.gameName;
    if (value != null) {
      result
        ..add('game_name')
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
  DownloadGamesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DownloadGamesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'e-mail':
          result.eMail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'game_name':
          result.gameName = serializers.deserialize(value,
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

class _$DownloadGamesRecord extends DownloadGamesRecord {
  @override
  final String? details;
  @override
  final String? eMail;
  @override
  final String? gameName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DownloadGamesRecord(
          [void Function(DownloadGamesRecordBuilder)? updates]) =>
      (new DownloadGamesRecordBuilder()..update(updates))._build();

  _$DownloadGamesRecord._({this.details, this.eMail, this.gameName, this.ffRef})
      : super._();

  @override
  DownloadGamesRecord rebuild(
          void Function(DownloadGamesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DownloadGamesRecordBuilder toBuilder() =>
      new DownloadGamesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DownloadGamesRecord &&
        details == other.details &&
        eMail == other.eMail &&
        gameName == other.gameName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, details.hashCode), eMail.hashCode), gameName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DownloadGamesRecord')
          ..add('details', details)
          ..add('eMail', eMail)
          ..add('gameName', gameName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DownloadGamesRecordBuilder
    implements Builder<DownloadGamesRecord, DownloadGamesRecordBuilder> {
  _$DownloadGamesRecord? _$v;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  String? _eMail;
  String? get eMail => _$this._eMail;
  set eMail(String? eMail) => _$this._eMail = eMail;

  String? _gameName;
  String? get gameName => _$this._gameName;
  set gameName(String? gameName) => _$this._gameName = gameName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DownloadGamesRecordBuilder() {
    DownloadGamesRecord._initializeBuilder(this);
  }

  DownloadGamesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _details = $v.details;
      _eMail = $v.eMail;
      _gameName = $v.gameName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DownloadGamesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DownloadGamesRecord;
  }

  @override
  void update(void Function(DownloadGamesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DownloadGamesRecord build() => _build();

  _$DownloadGamesRecord _build() {
    final _$result = _$v ??
        new _$DownloadGamesRecord._(
            details: details, eMail: eMail, gameName: gameName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
