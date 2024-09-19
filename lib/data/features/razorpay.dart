import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/book_ticket_model.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/payment.dart';
import 'package:myairdeal/secret/secret_keys.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayGateway {
  final BuildContext context;
  final BookTicketModel bookTicketModel;
  final _razorpay = Razorpay();
  RazorpayGateway(this.context, this.bookTicketModel) {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void dispose() {
    _razorpay.clear();
  }

  Future<void> makePayment({
    required double amount,
    required String description,
    required String email,
    required String phone,
    required bool live,
  }) async {
    var options = {
      'key': live ? liveKeyId : testKeyId,
      // 'order_id':'',
      'amount': amount * 100, // Amount in paise
      'name': 'Bechdu',
      'description': description,
      "entity": "order",
      "currency": "INR",
      "status": "created",
      "notes": [],
      'prefill': {
        'email': email, // User's email address
        'contact': phone, // User's phone number
      },
      'external': {
        'wallets': ['paytm']
      },
      'method': {
        'netbanking': true,
        'card': true,
        'upi': true,
        'wallet': true,
      },
    };

    try {
      _razorpay.open(options);
    } on PlatformException catch (e) {
      debugPrint('razorpay platform exception');
      debugPrint(e.message);
    } catch (e) {
      debugPrint('razorpay exception');
      debugPrint(e.toString());
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    debugPrint('=========Payment successful: ${response.data}');
    debugPrint('=========Payment successful: ${response.paymentId}');
    debugPrint('=========Payment successful: ${response.orderId}');
    debugPrint('=========Payment successful: ${response.signature}');
    Get.find<BookingController>().completeBooking(bookTicketModel.copyWith(
        payment: Payment(
            razorpayOrderId: response.orderId,
            razorpayPaymentId: response.paymentId,
            razorpaySignature: response.signature)));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    debugPrint('==========Payment failed: $response');
    Get.snackbar('Payment Failed', 'Failed to verify payment, try again',
        backgroundColor: kRed, colorText: kWhite);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    debugPrint('=============External wallet selected: ${response.walletName}');
  }
}
