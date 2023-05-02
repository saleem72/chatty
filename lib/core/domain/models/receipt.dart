// ignore_for_file: public_member_api_docs, sort_constructors_first
//

class Receipt {
  final String owner;
  final String messageId;
  final String status;
  final int timeStamp;
  Receipt({
    required this.owner,
    required this.messageId,
    required this.status,
    required this.timeStamp,
  });

  Map<String, dynamic> tpMap() {
    return <String, dynamic>{
      'owner': owner,
      'messageId': messageId,
      'status': status,
      'timeStamp': timeStamp,
    };
  }
}
