import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_text.dart';

class HomeController extends GetxController {
  //User Input Controller
  final userInputController = TextEditingController();

  int vat = 5; // for all bill
  //Residential Bill Calculation
  double cost = 0.0;
  //int residentialCost = 0;
  double residentialDemandCharge = 42.0;

  void residentialBillCalculation() {
    try {
      //  residentialCost = int.parse(cost);
      double userInput = double.parse(userInputController.text.trim());
      double lifeLine = 4.63;
      double firstStep = 5.26;
      double secondStep = 7.20;
      double thirdStep = 7.59;
      double fourthStep = 8.02;
      double fiveStep = 12.61;
      double sixStep = 14.61;

      //Life Line
      if (userInput <= 50) {
        cost = userInput * lifeLine;
      }
      //first Step
      else if (userInput <= 75) {
        cost = 50 * lifeLine + (userInput - 50) * firstStep;
      }
      //second Step
      else if (userInput <= 200) {
        cost = 50 * lifeLine + 25 * firstStep + (userInput - 75) * secondStep;
      }
      //third Step
      else if (userInput <= 300) {
        cost = 50 * lifeLine +
            25 * firstStep +
            125 * secondStep +
            (userInput - 200) * thirdStep;
      }
      //fourth Step
      else if (userInput <= 400) {
        cost = 50 * lifeLine +
            25 * firstStep +
            125 * secondStep +
            100 * thirdStep +
            (userInput - 300) * fourthStep;
      }

      //five Step
      else if (userInput <= 600) {
        cost = 50 * lifeLine +
            25 * firstStep +
            125 * secondStep +
            100 * thirdStep +
            100 * fourthStep +
            (userInput - 400) * fiveStep;
      }
      //sixth Step
      else {
        cost = 50 * lifeLine +
            25 * firstStep +
            125 * secondStep +
            100 * thirdStep +
            100 * fourthStep +
            200 * fiveStep +
            (userInput - 600) * sixStep;
      }
    } catch (e) {
      _buildErrorHandler(AppText.errorMessageText, AppText.errorMessageSubText);
    }
  }

  //agriculture bill Calculation
  double agricultureCost = 0;
  double agricultureDemandCharge = 42.0;
  void agricultureBillCalculation() {
    try {
      double userInput = double.parse(userInputController.text.trim());
      double unitsCharge = 5.25;
      agricultureCost = unitsCharge * userInput;
    } catch (e) {
      _buildErrorHandler(AppText.errorMessageText, AppText.errorMessageSubText);
    }
  }

  //Retail Industry Calculations
  double retailIndustrialCost = 0;
  double retailIndustryDemandCharge = 48.0;
  void retailIndustrialCalculation() {
    try {
      double userInput = double.parse(userInputController.text.trim());
      //only flat  bill rate
      double unitsCharge = 10.76;
      retailIndustrialCost = unitsCharge * userInput;
    } catch (e) {
      _buildErrorHandler(AppText.errorMessageText, AppText.errorMessageSubText);
    }
  }

  //Constructor Calculations
  double constructorCost = 0;
  double constructorDemandCharge = 120.0;
  void constructorCalculation() {
    try {
      double userInput = double.parse(userInputController.text.trim());
      double unitsCharge = 15.15;
      constructorCost = unitsCharge * userInput;
    } catch (e) {
      _buildErrorHandler(AppText.errorMessageText, AppText.errorMessageSubText);
    }
  }

  // Education
  //religious
  //Charitable
  //Hospital
  // Calculations  used same function
  double educationCost = 0;
  double educationDemandCharge = 60.0;
  void educationWithReligiousCalculation() {
    try {
      double userInput = double.parse(userInputController.text.trim());
      double unitsCharge = 7.55;
      educationCost = unitsCharge * userInput;
    } catch (e) {
      _buildErrorHandler(AppText.errorMessageText, AppText.errorMessageSubText);
    }
  }

  //streetLight
  // water pump
  //Calculations used same function
  double streetLightCost = 0;
  double streetLightDemandCharge = 90.0;
  void streetLightWithWaterPumpCalculation() {
    try {
      double userInput = double.parse(userInputController.text.trim());
      double unitsCharge = 9.71;
      streetLightCost = unitsCharge * userInput;
    } catch (e) {
      _buildErrorHandler(AppText.errorMessageText, AppText.errorMessageSubText);
    }
  }

  //battery Charging Stations
  double batteryChargingCost = 0;
  double batteryChargingDemandCharge = 90.0;
  void batteryChargingStations() {
    try {
      double userInput = double.parse(userInputController.text.trim());
      //only use flat battery
      double unitsCharge = 9.62;
      batteryChargingCost = unitsCharge * userInput;
    } catch (e) {
      _buildErrorHandler(AppText.errorMessageText, AppText.errorMessageSubText);
    }
  }

  //commercial office service
  double commercialOfficeCost = 0;
  double commercialOfficeDemandCharge = 90.0;
  void commercialOfficeCalculation() {
    try {
      double userInput = double.parse(userInputController.text.trim());
      //only use flat battery
      double unitsCharge = 13.01;
      commercialOfficeCost = unitsCharge * userInput;
    } catch (e) {
      _buildErrorHandler(AppText.errorMessageText, AppText.errorMessageSubText);
    }
  }

  //temporary Bill Calculations
  double temporaryCost = 0;
  double temporaryDemandCharge = 120.0;
  void temporaryCalculation() {
    try {
      double userInput = double.parse(userInputController.text.trim());
      double unitsCharge = 20.17;
      temporaryCost = unitsCharge * userInput;
    } catch (e) {
      _buildErrorHandler(AppText.errorMessageText, AppText.errorMessageSubText);
    }
  }

  //This is a function when a user click and show a message
  int unitPrice = 0;
  int demandChargeCost = 0;
  int vatConvert = 0;
  int sumOfAmount = 0;
  void showUnitWithCost(double cost, double demandCharge, int vat) {
    //Unit price cost
    unitPrice = cost.toInt();
    //Demand charge cost
    demandChargeCost = demandCharge.toInt();

    //Vat cost 5%
    vatConvert = (unitPrice + demandChargeCost) * (vat) ~/ 100;

    //Total cost
    sumOfAmount = unitPrice + demandChargeCost + vatConvert;
  }
}

//Error message handler
SnackbarController _buildErrorHandler(String titleText, String subText) {
  return Get.snackbar(
    titleText,
    subText,
    snackPosition: SnackPosition.TOP,
    backgroundColor: AppColors.redColor,
    colorText: AppColors.whiteColor,
    borderRadius: 15.0,
    barBlur: 15.0,
  );
}
