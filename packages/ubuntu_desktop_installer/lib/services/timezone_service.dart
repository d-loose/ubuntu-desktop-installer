import 'package:dbus/dbus.dart';
import 'package:meta/meta.dart';
import 'package:subiquity_client/subiquity_client.dart';

abstract class TimezoneService {
  Future<String> getTimezone();
  Future<void> setTimezone(String timezone);
}

class SubiquityTimezoneService implements TimezoneService {
  const SubiquityTimezoneService(this._subiquity);

  final SubiquityClient _subiquity;

  @override
  Future<String> getTimezone() {
    return _subiquity.getTimezone().then((info) => info.timezone);
  }

  @override
  Future<void> setTimezone(String timezone) {
    return _subiquity.setTimezone(timezone);
  }
}

class XdgTimezoneService implements TimezoneService {
  XdgTimezoneService([@visibleForTesting DBusRemoteObject? object])
      : _object = object ?? _createRemoteObject();

  static DBusRemoteObject _createRemoteObject() {
    return DBusRemoteObject(
      DBusClient.system(),
      name: 'org.freedesktop.timedate1',
      path: DBusObjectPath('/org/freedesktop/timedate1'),
    );
  }

  final DBusRemoteObject _object;

  @override
  Future<String> getTimezone() {
    return _object
        .getProperty(
          'org.freedesktop.timedate1',
          'Timezone',
          signature: DBusSignature.string,
        )
        .then((v) => v.asString());
  }

  @override
  Future<void> setTimezone(String timezone) async {
    await _object.callMethod(
      'org.freedesktop.timedate1',
      'SetTimezone',
      [DBusString(timezone), const DBusBoolean(false)],
      replySignature: DBusSignature.empty,
    );
  }
}
