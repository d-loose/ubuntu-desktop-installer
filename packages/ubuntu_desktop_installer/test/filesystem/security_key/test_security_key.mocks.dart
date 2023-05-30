// Mocks generated by Mockito 5.4.1 from annotations
// in ubuntu_desktop_installer/test/filesystem/security_key/test_security_key.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;
import 'dart:ui' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:ubuntu_desktop_installer/pages/filesystem/security_key/security_key_model.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [SecurityKeyModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockSecurityKeyModel extends _i1.Mock implements _i2.SecurityKeyModel {
  MockSecurityKeyModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get securityKey => (super.noSuchMethod(
        Invocation.getter(#securityKey),
        returnValue: '',
      ) as String);
  @override
  set securityKey(String? value) => super.noSuchMethod(
        Invocation.setter(
          #securityKey,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get confirmedSecurityKey => (super.noSuchMethod(
        Invocation.getter(#confirmedSecurityKey),
        returnValue: '',
      ) as String);
  @override
  set confirmedSecurityKey(String? value) => super.noSuchMethod(
        Invocation.setter(
          #confirmedSecurityKey,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get showSecurityKey => (super.noSuchMethod(
        Invocation.getter(#showSecurityKey),
        returnValue: false,
      ) as bool);
  @override
  set showSecurityKey(bool? value) => super.noSuchMethod(
        Invocation.setter(
          #showSecurityKey,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get isValid => (super.noSuchMethod(
        Invocation.getter(#isValid),
        returnValue: false,
      ) as bool);
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);
  @override
  _i3.Future<void> loadSecurityKey() => (super.noSuchMethod(
        Invocation.method(
          #loadSecurityKey,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> saveSecurityKey() => (super.noSuchMethod(
        Invocation.method(
          #saveSecurityKey,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  void addListener(_i4.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i4.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
