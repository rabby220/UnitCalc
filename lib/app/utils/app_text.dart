import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
  //All assets file paths

  static const String imagePath = "assets/image";
  static const String residentialAsset = "$imagePath/residential.png";
  static const String agriculturalAsset = "$imagePath/agricultural-pumps.png";
  static const String retailIndustryAsset = "$imagePath/retail-industry.png";
  static const String constructionAsset = "$imagePath/construction.png";
  static const String educationAsset = "$imagePath/educational.png";
  static const String religiousAsset = "$imagePath/religious.png";
  static const String charitableAsset = "$imagePath/charitable.png";
  static const String hospitalsAsset = "$imagePath/hospitals.png";
  static const String streetLightsAsset = "$imagePath/street-lights.png";
  static const String waterPumpAsset = "$imagePath/water-pumps.png";
  static const String batteryChargingAsset =
      "$imagePath/battery-charging-stations.png";
  static const String businessOfficeAsset = "$imagePath/commercial-office.png";
  static const String temporaryAsset = "$imagePath/temporary.png";
  static const String tariffAsset = "$imagePath/tariff.png";

  //Android app Text
  static const String residentialText = "Residential";
  static const String residentialSubText = "LT-A";

  static const String agriculturalPumpText = "Agriculture-pumps";
  static const String agriculturalPumpSubText = "LT-B";

  static const String retailIndustryText = "Retail-industry";
  static const String retailIndustrySubText = "LT-C1";

  static const String constructionText = "Construction";
  static const String constructionSubText = "LT-C2";

  static const String educationalText = "Educational";
  static const String educationalSubText = "LT-D1";

  static const String religiousText = "Religious";
  static const String religiousSubText = "LT-D1";

  static const String charitableText = "Charitable";
  static const String charitableSubText = "LT-D1";

  static const String hospitalsText = "Hospitals";
  static const String hospitalsSubText = "LT-D1";

  static const String streetLightsText = "Street-lights";
  static const String streetLightsSubText = "LT-D2";

  static const String waterPumpText = "Water-Pumps";
  static const String waterPumpSubText = "LT-D2";

  static const String batteryChargingStationText = "Battery Charging Stations";
  static const String batteryChargingStationSubText = "LT-D3";

  static const String commercialOfficeText = "Commercial-Office";
  static const String commercialOfficeSubText = "LT-E";

  static const String temporaryText = "Temporary";
  static const String temporarySubText = "LT-T";

  static const String billHistoryText = "Bill History";
  static const String billCalculationText = "Bill Calculation";

  //error message
  static const String errorMessageText = "Input Required";
  static const String errorMessageSubText =
      "Please provide the necessary information to proceed.";

  static const String flatLifeLine = "Flat (Life Line)";
  static const String flatTariff = "Flat";

  static const String resiDemand = "42";
  static const String agriDemand = "42";
  static const String retailDemand = "48";
  static const String constructDemand = "120";
  static const String eduDemand = "60";
  static const String streetDemand = "90";
  static const String batteryDemand = "90";
  static const String officeDemand = "90";
  static const String tempoDemand = "120";
  static const String unitDash = "-";
  static const String lifeLine = "0 - 50";
  static const String fLine = "0 - 75";
  static const String sLine = "75 - 200";
  static const String tLine = "200 -300";
  static const String foLine = "300 -400";
  static const String fiLine = "400 - 600";
  static const String siLine = "600+";



  static TextStyle appTextStyle = GoogleFonts.aDLaMDisplay(
    fontSize: 17,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle appSubTextStyle = GoogleFonts.abel(
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle billBottomTitleTextTextStyle = GoogleFonts.aDLaMDisplay(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle buttonTextStyle = GoogleFonts.abel(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  //data cell
  static TextStyle dataCellTextStyle = GoogleFonts.ubuntu(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );

  //data cell for Tariff Plan
  static TextStyle tariffTextStyle = GoogleFonts.aDLaMDisplay(
    fontSize: 17,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );

  static TextStyle tariffDataCellTextStyle = GoogleFonts.signika(
    fontSize: 15.0,
    color: Colors.white,
  );
}
