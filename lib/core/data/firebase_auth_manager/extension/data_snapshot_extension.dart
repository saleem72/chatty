//

import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

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
    try {
      if (value != null) {
        var spaces = ' ' * 4;
        var encoder = JsonEncoder.withIndent(spaces);
        final temp = encoder.convert(value);
        return jsonDecode(temp);
      } else {
        return <String, dynamic>{};
      }
    } catch (e) {
      debugPrint('🔥 Error DataSnapshotPretty:\n${e.toString()}\n$this');
      return <String, dynamic>{};
    }
  }
}
