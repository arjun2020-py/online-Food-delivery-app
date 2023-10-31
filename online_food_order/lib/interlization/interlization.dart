import 'package:get/get.dart';

class Internationalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          LocalName.onlineFoodDelivery: "Online Food Delivery",
          LocalName.paragrphText: "Satisfy every carving with our"
              " expectional food delivery\n "
              "service.",
          LocalName.getStarted: "Get  Started",
          LocalName.login: "Login",
          LocalName.email: "Email",
          LocalName.passwrod: "Passwrod",
          LocalName.loginForm: "Login Form",
          LocalName.signupForm: "Siginup Form",
          LocalName.phone: "Phone",
          LocalName.signUp: "Sign Up ",
          LocalName.pleseEnterValidEmailId: "Please Enter Valid Email id",
          LocalName.pleaseEnterValidPhoneNumber:
              "Please Enter Valid Phone Number",
          LocalName.pleaseEnterValidPasswrod: "Please Enter Valid Passwrod",
          LocalName.phoneVerfication: "Phone Verfication",
          LocalName.enterYourVerficationCode: "Enter your verfication code",
          LocalName.resend: "Resend",
          LocalName.verify: "Verify",
          LocalName.searchFood: "Search Food...."
        }
      };
}

class LocalName {
  static String onlineFoodDelivery = "online_food_delivery";
  static String paragrphText =
      "satisfy_every_carving_with_our_expectional_food_delivery_service.";
  static String getStarted = "get_started";
  static String login = "login";
  static String email = "email";
  static String passwrod = "passwrod";
  static String phone = "phone";
  static String loginForm = "login_form";
  static String signupForm = "siginup_form";
  static String signUp = "Sigin_up";
  static String pleseEnterValidEmailId = "plese_enter_valid_email_id";
  static String pleaseEnterValidPhoneNumber = "please_enter_valid_phone_number";
  static String pleaseEnterValidPasswrod = "please_enter_valid_passwrod";
  static String phoneVerfication = "phone_verfication";
  static String enterYourVerficationCode = "enter_your_verfication_code";
  static String resend = "resend";
  static String verify = "verify";
  static String searchFood = 'search_food';
}
