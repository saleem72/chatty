//

import '../models/fb_message.dart';
import '../models/receipt.dart';

abstract class IRemoteReceiptsService {
  Future<void> sendDeliverdRecipt(FBMessage message);
  Future<void> sendReceivedReciept(List<Receipt> receipts);
  Future<void> deleteReceipt(Receipt receipt);
  Future<void> dispose();
  Stream<Receipt> subscripe(String userId);
}
