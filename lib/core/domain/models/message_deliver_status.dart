//

enum MessageDeliverStatus {
  sent,
  delivered;

  String get value => toString().split('.').last;

  factory MessageDeliverStatus.fromString(String value) =>
      MessageDeliverStatus.values
          .firstWhere((element) => element.value == value);
}
