import 'dart:math';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_text.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: _buildDashboard(context, controller),
      ),
    );
  }
}

//build a Dashboard for all bill methods
Widget _buildDashboard(BuildContext context, HomeController controller) {
  final currentCount = (MediaQuery.of(context).size.width ~/ 250).toInt();
  const minCount = 2;
  return Padding(
    padding: const EdgeInsets.all(7.0),
    child: GridView.count(
      crossAxisCount: max(currentCount, minCount),
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      children: <Widget>[
        //Residential Area
        _buildClayContainer(
          context,
          AppText.residentialAsset,
          AppText.residentialText,
          AppText.residentialSubText,
          () => _buildCalculateBill(
              context, 'Residential ${AppText.billCalculationText}', controller,
              () {
            controller.residentialBillCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.cost,
                controller.residentialDemandCharge,
                controller.vat,
              );

              //When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Residential ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Agriculture Pump Area
        _buildClayContainer(
          context,
          AppText.agriculturalAsset,
          AppText.agriculturalPumpText,
          AppText.agriculturalPumpSubText,
          () => _buildCalculateBill(context,
              'Agricultural ${AppText.billCalculationText}', controller, () {
            controller.agricultureBillCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.agricultureCost,
                controller.agricultureDemandCharge,
                controller.vat,
              );
              //When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Agriculture ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Retail Industry Area
        _buildClayContainer(
          context,
          AppText.retailIndustryAsset,
          AppText.retailIndustryText,
          AppText.retailIndustrySubText,
          () => _buildCalculateBill(context,
              'Retail Industry ${AppText.billCalculationText}', controller, () {
            controller.retailIndustrialCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.retailIndustrialCost,
                controller.retailIndustryDemandCharge,
                controller.vat,
              );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Retail Industrial ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );

              controller.userInputController.clear();
            }
          }),
        ),

        //Construction Area
        _buildClayContainer(
          context,
          AppText.constructionAsset,
          AppText.constructionText,
          AppText.constructionSubText,
          () => _buildCalculateBill(context,
              'Construction ${AppText.billCalculationText}', controller, () {
            controller.constructorCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.constructorCost,
                controller.constructorDemandCharge,
                controller.vat,
              );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Construction ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Education Area
        _buildClayContainer(
          context,
          AppText.educationAsset,
          AppText.educationalText,
          AppText.educationalSubText,
          () => _buildCalculateBill(
              context, 'Education ${AppText.billCalculationText}', controller,
              () {
            controller.educationWithReligiousCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.educationCost,
                controller.educationDemandCharge,
                controller.vat,
              );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Educational ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Religious Area
        _buildClayContainer(
          context,
          AppText.religiousAsset,
          AppText.religiousText,
          AppText.religiousSubText,
          () => _buildCalculateBill(
              context, 'Religious ${AppText.billCalculationText}', controller,
              () {
            controller.educationWithReligiousCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.educationCost,
                controller.educationDemandCharge,
                controller.vat,
              );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Religious ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Charitable Area
        _buildClayContainer(
          context,
          AppText.charitableAsset,
          AppText.charitableText,
          AppText.charitableSubText,
          () => _buildCalculateBill(
              context, 'Charitable ${AppText.billCalculationText}', controller,
              () {
            controller.educationWithReligiousCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.educationCost,
                controller.educationDemandCharge,
                controller.vat,
              );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Charitable ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Hospitals Area
        _buildClayContainer(
          context,
          AppText.hospitalsAsset,
          AppText.hospitalsText,
          AppText.hospitalsSubText,
          () => _buildCalculateBill(
              context, 'Hospitals ${AppText.billCalculationText}', controller,
              () {
            controller.educationWithReligiousCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.educationCost,
                controller.educationDemandCharge,
                controller.vat,
              );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Hospitals ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Street Light Area
        _buildClayContainer(
          context,
          AppText.streetLightsAsset,
          AppText.streetLightsText,
          AppText.streetLightsSubText,
          () => _buildCalculateBill(
            context,
            'Street Lights ${AppText.billCalculationText}',
            controller,
            () {
              controller.streetLightWithWaterPumpCalculation();
              if (controller.userInputController.text.isEmpty) {
                return;
              } else {
                //This is a function passing argument
                controller.showUnitWithCost(
                  controller.streetLightCost,
                  controller.streetLightDemandCharge,
                  controller.vat,
                );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
                _buildAlertMessage(
                  context,
                  'Street Light ${AppText.billHistoryText}',
                  controller,
                  controller.unitPrice.toString(),
                  controller.demandChargeCost.toString(),
                  controller.vatConvert.toString(),
                  controller.sumOfAmount.toString(),
                );
                controller.userInputController.clear();
              }
            },
          ),
        ),

        //Water Pump Area
        _buildClayContainer(
          context,
          AppText.waterPumpAsset,
          AppText.waterPumpText,
          AppText.waterPumpSubText,
          () => _buildCalculateBill(
              context, 'Water Pump ${AppText.billCalculationText}', controller,
              () {
            controller.streetLightWithWaterPumpCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.streetLightCost,
                controller.streetLightDemandCharge,
                controller.vat,
              );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Water Pump ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Battery Charging Area
        _buildClayContainer(
          context,
          AppText.batteryChargingAsset,
          AppText.batteryChargingStationText,
          AppText.batteryChargingStationSubText,
          () => _buildCalculateBill(
              context,
              'Battery Charging ${AppText.billCalculationText}',
              controller, () {
            controller.batteryChargingStations();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.batteryChargingCost,
                controller.batteryChargingDemandCharge,
                controller.vat,
              );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Battery Charging Station ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Business Office
        _buildClayContainer(
          context,
          AppText.businessOfficeAsset,
          AppText.commercialOfficeText,
          AppText.commercialOfficeSubText,
          () => _buildCalculateBill(context,
              'Business Office ${AppText.billCalculationText}', controller, () {
            controller.commercialOfficeCalculation();
            if (controller.userInputController.text.isEmpty) {
              return;
            } else {
              //This is a function passing argument
              controller.showUnitWithCost(
                controller.commercialOfficeCost,
                controller.commercialOfficeDemandCharge,
                controller.vat,
              );
//When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
              _buildAlertMessage(
                context,
                'Commercial Office ${AppText.billHistoryText}',
                controller,
                controller.unitPrice.toString(),
                controller.demandChargeCost.toString(),
                controller.vatConvert.toString(),
                controller.sumOfAmount.toString(),
              );
              controller.userInputController.clear();
            }
          }),
        ),

        //Temporary
        _buildClayContainer(
          context,
          AppText.temporaryAsset,
          AppText.temporaryText,
          AppText.temporarySubText,
          () => _buildCalculateBill(
            context,
            'Temporary ${AppText.billCalculationText}',
            controller,
            () {
              controller.temporaryCalculation();
              if (controller.userInputController.text.isEmpty) {
                return;
              } else {
                //This is a function passing argument
                controller.showUnitWithCost(
                  controller.temporaryCost,
                  controller.temporaryDemandCharge,
                  controller.vat,
                );
                //When user click Button then show will alert button and all result show such as unitPrice Demand Charge Vat and sum of cost.
                _buildAlertMessage(
                  context,
                  'Temporary ${AppText.billHistoryText}',
                  controller,
                  controller.unitPrice.toString(),
                  controller.demandChargeCost.toString(),
                  controller.vatConvert.toString(),
                  controller.sumOfAmount.toString(),
                );
                controller.userInputController.clear();
              }
            },
          ),
        ),
      ],
    ),
  );
}

//build list of Widgets
Widget _buildClayContainer(BuildContext context, String imageFileName,
    String titleText, String subtitle, VoidCallback onTapped) {
  return InkWell(
    onTap: onTapped,
    child: Card(
      shadowColor: AppColors.orangeColor,
      elevation: 15.0,
      child: Container(
        color: AppColors.blackColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Image.asset(
                width: MediaQuery.of(context).size.width,
                imageFileName,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            _buildAppText(titleText),
            _buildAppSubText(subtitle),
          ],
        ),
      ),
    ),
  );
}

//build app Text
Widget _buildAppText(String appTitle) {
  return Expanded(
    flex: 1,
    child: AutoSizeText(
      appTitle,
      maxLines: 1,
      style: AppText.appTextStyle,
    ),
  );
}

//build app SubText
Widget _buildAppSubText(String subtitle) {
  return Expanded(
    flex: 1,
    child: AutoSizeText(
      subtitle,
      maxLines: 1,
      style: AppText.appSubTextStyle,
    ),
  );
}

//Calculate Bill Button
Future<void> _buildCalculateBill(BuildContext context, String titleText,
    HomeController controller, VoidCallback onPressed) async {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Makes the modal responsive
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blackColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              ListTile(
                title: Center(
                  child: AutoSizeText(
                    titleText,
                    maxLines: 1,
                    style: AppText.billBottomTitleTextTextStyle,
                  ),
                ),
                trailing: InkWell(
                  onTap: () {
                    Get.toNamed('/bill-tariff');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        AppText.tariffAsset,
                        color: AppColors.whiteColor,
                        width: 25.0,
                        height: 25.0,
                      ),
                      Text('Tariff', style: AppText.appSubTextStyle)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              ListTile(
                title: Center(
                    child: TextField(
                  controller: controller.userInputController,
                  style: AppText.buttonTextStyle,
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                  decoration: InputDecoration(
                    suffix: const Text('KWh'),
                    suffixStyle: AppText.buttonTextStyle,
                    labelStyle: AppText.buttonTextStyle,
                    hintText: 'Number of Units',
                    hintStyle: AppText.buttonTextStyle,
                    labelText: 'Units Consumed',
                    border: const OutlineInputBorder(),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  textAlign: TextAlign.center,
                )),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Center(
                child: MaterialButton(
                  elevation: 15.0,
                  onPressed: onPressed,
                  splashColor: AppColors.orangeColor,
                  textColor: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: AppColors.orangeColor,
                          style: BorderStyle.solid,
                          width: 2.0,
                          strokeAlign: 2.0),
                      borderRadius: BorderRadius.circular(10.0)),
                  color: AppColors.blackColor,
                  minWidth: MediaQuery.of(context).size.width / 2.5,
                  padding: const EdgeInsets.all(15.0),
                  child: AutoSizeText(
                    'Calculate Bill',
                    maxLines: 1,
                    style: AppText.buttonTextStyle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

//build alert message
Future<void> _buildAlertMessage(
  BuildContext context,
  String titleText,
  HomeController controller,
  String unitPrice,
  String demandCharge,
  String vat,
  String totalCharge,
) async {
  return showDialog(
    context: context,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 7,
        sigmaY: 7,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: AlertDialog(
          backgroundColor: AppColors.blackColor,
          title: Center(
            child: Text(
              titleText,
              textAlign: TextAlign.center,
              style: AppText.buttonTextStyle,
            ),
          ),
          content: DataTable(
              border: TableBorder(
                borderRadius: BorderRadius.circular(25.0),
                left: BorderSide(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color: AppColors.whiteColor,
                ),
                right: BorderSide(
                    width: 2.0,
                    style: BorderStyle.solid,
                    color: AppColors.whiteColor),
                bottom: BorderSide(
                    width: 2.0,
                    style: BorderStyle.solid,
                    color: AppColors.whiteColor),
                top: BorderSide(
                    width: 2.0,
                    style: BorderStyle.solid,
                    color: AppColors.whiteColor),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              columns: [
                _buildDataColumn('CHARGE'),
                _buildDataColumn('TK')
              ],
              rows: [
                DataRow(cells: [
                  _buildDataCell('Unit Price'),
                  _buildDataCell(unitPrice),
                ]),
                DataRow(cells: [
                  _buildDataCell('Demand'),
                  _buildDataCell(demandCharge),
                ]),
                DataRow(cells: [
                  _buildDataCell('Vat (5%)'),
                  _buildDataCell(vat),
                ]),
                DataRow(cells: [
                  _buildDataCell('Total'),
                  _buildDataCell(totalCharge),
                ]),
              ]),
          actions: [
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              textColor: AppColors.whiteColor,
              color: AppColors.redColor,
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    ),
  );
}

//Widget Build DataCell
DataCell _buildDataCell(String dataCellText) {
  return DataCell(
    Text(
      dataCellText,
      style: AppText.dataCellTextStyle,
    ),
  );
}

//Widget Build DataColumn
DataColumn _buildDataColumn(String dataCellText) {
  return DataColumn(
    label: Text(
      dataCellText,
      style: AppText.dataCellTextStyle,
    ),
  );
}
