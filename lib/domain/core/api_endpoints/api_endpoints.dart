class ApiEndPoints {
  static const String baseUrl = 'https://myairdeal-backend.onrender.com';

  static const String sendOTP = '/user/send-sms';
  static const String verifyOTP = '/user/verify-otp';
  static const String flightSort = '/search/flight';
  static const String retrieveSingleBooking = '/booking/retrieve-booking';
  static const String retrieveAllBooking = '/user/retrieve-user-bookings';
  static const String upcomingAllBooking = '/user/upcoming-user-bookings';
  static const String completedAllBooking = '/user/completed-user-bookings';
  static const String cancelledAllBooking = '/user/cancelled-user-bookings';
}
