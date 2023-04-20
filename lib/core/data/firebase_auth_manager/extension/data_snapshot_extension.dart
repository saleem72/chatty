//

import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';

extension DataSnapshotPretty on DataSnapshot {
  String prettyJson() {
    if (value != null) {
      var spaces = ' ' * 4;
      var encoder = JsonEncoder.withIndent(spaces);
      return encoder.convert(value);
    } else {
      return '';
    }
  }

  Map<String, dynamic> toJson() {
    if (value != null) {
      var spaces = ' ' * 4;
      var encoder = JsonEncoder.withIndent(spaces);
      final temp = encoder.convert(value);
      return jsonDecode(temp);
    } else {
      return {};
    }
  }
}
