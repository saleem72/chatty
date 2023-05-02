//

enum MessageDeliverStatus {
  sent,
  delivered,
  received;

  String get value => toString().split('.').last;

  factory MessageDeliverStatus.fromString(String value) =>
      MessageDeliverStatus.values
          .firstWhere((element) => element.value == value);
}
