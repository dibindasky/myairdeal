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
  static const String userData = '/user/profile';
  static const String amendendMentCharge = '/booking/amendment-charges';
  static const String recentSearch = '/search/searchQueryHistory';
  static const String airportSearch = '/search/user-get-all-airports?search=';
  static const String reviewPriceDetails = '/booking/review-price';
  static const String completeBooking = '/booking/complete';
  static const String airportRecentSearch = '/search/airportSearchHistory';
  static const airportSearchWithCountryCode =
      '/search/airport-country-code?countrycode=';
  static const raiceTicket = '/ticket/create-ticket';
  static const getTickets = '/ticket/view-all-tickets/{created_d}';
  static const invoiceDownLoad = '/user/generate-invoice/{booking_id}';
}
