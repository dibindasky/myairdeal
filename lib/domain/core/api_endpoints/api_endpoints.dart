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
  static const String addUserDetails = '/user/add-detail';
  static const String getprofile = '/user/profile';
  static const String amendendMentCharge = '/booking/amendment-charges';
  static const String recentSearch = '/search/searchQueryHistory';
  static const String airportSearch = '/search/user-get-all-airports?search=';
  static const String reviewPriceDetails = '/booking/review-price';
  static const String completeBooking = '/booking/complete';
  static const String airportRecentSearch = '/search/airportSearchHistory';
  static const String airportSearchWithCountryCode =
      '/search/airport-country-code?countrycode=';
  static const String raiceTicket = '/ticket/create-ticket';
  static const String getTickets = '/ticket/view-all-tickets/{created_d}';
  static const String invoiceDownLoad = '/user/generate-invoice/{booking_id}';
  static const String getAllPassengers = '/user/all-passengers';
  static const String addPassengers = '/user/add-passenger';
  static const String getSeatMap = '/booking/seat-map';

  // change {airlinecode} for logo
  static const String airllineLogo = "/uploads/AirlinesLogo/{airlinecode}.png";
}
