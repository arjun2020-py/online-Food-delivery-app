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
          LocalName.login: "Login"
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
}
