import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_text.dart';
import '../controllers/bill_tariff_controller.dart';

class BillTariffView extends GetView<BillTariffController> {
  const BillTariffView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Get.toNamed('/home');
            },
          ),
          backgroundColor: Colors.black,
          title: Text(
            'Tariff Plan',
            style: AppText.billBottomTitleTextTextStyle,
          ),
          centerTitle: true,
          toolbarHeight: 100.0,
          elevation: 5.0,
          shadowColor: AppColors.orangeColor,
        ),
        backgroundColor: AppColors.blackColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Center(
              child: DataTable(
                  dataTextStyle: AppText.tariffDataCellTextStyle,
                  showBottomBorder: true,
                  headingTextStyle: AppText.tariffTextStyle,
                  dataRowMaxHeight: 70.0,
                  dataRowMinHeight: 50.0,
                  headingRowHeight: MediaQuery.of(context).size.height * 0.1,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  columns: <DataColumn>[
                    _buildDataColumn('Category\n  Name'),
                    _buildDataColumn('Type'),
                    _buildDataColumn('Demand\n  Charge'),
                    _buildDataColumn('Unit\nRange'),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: [
                      _buildDataCell('${AppText.residentialSubText} '
                          '${AppText.residentialText}'),
                      _buildDataCell(AppText.flatLifeLine),
                      _buildDataCell(AppText.resiDemand),
                      _buildDataCell(AppText.lifeLine),
                    ]),
                    DataRow(cells: [
                      _buildDataCell('${AppText.residentialSubText} '
                          '${AppText.residentialText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.resiDemand),
                      _buildDataCell(AppText.fLine),
                    ]),
                    DataRow(cells: [
                      _buildDataCell('${AppText.residentialSubText} '
                          '${AppText.residentialText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.resiDemand),
                      _buildDataCell(AppText.sLine),
                    ]),
                    DataRow(cells: [
                      _buildDataCell('${AppText.residentialSubText} '
                          '${AppText.residentialText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.resiDemand),
                      _buildDataCell(AppText.tLine),
                    ]),
                    DataRow(cells: [
                      _buildDataCell('${AppText.residentialSubText} '
                          '${AppText.residentialText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.resiDemand),
                      _buildDataCell(AppText.foLine),
                    ]),
                    DataRow(cells: [
                      _buildDataCell('${AppText.residentialSubText} '
                          '${AppText.residentialText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.resiDemand),
                      _buildDataCell(AppText.fiLine),
                    ]),
                    DataRow(cells: [
                      _buildDataCell('${AppText.residentialSubText} '
                          '${AppText.residentialText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.resiDemand),
                      _buildDataCell(AppText.siLine),
                    ]),

                    //Agriculture
                    DataRow(cells: [
                      _buildDataCell('${AppText.agriculturalPumpSubText} '
                          '${AppText.agriculturalPumpText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.agriDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),

                    ///
                    DataRow(cells: [
                      _buildDataCell('${AppText.retailIndustrySubText} '
                          '${AppText.retailIndustryText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.retailDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),
                    DataRow(cells: [
                      _buildDataCell('${AppText.constructionSubText} '
                          '${AppText.constructionText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.constructDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),

                    /// edu
                    DataRow(cells: [
                      _buildDataCell(
                        '${AppText.educationalSubText} '
                        ' ${AppText.educationalText}\n',
                      ),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.eduDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),

                    //charitable
                    DataRow(cells: [
                      _buildDataCell(
                        '${AppText.charitableSubText} '
                        ' ${AppText.charitableText}\n',
                      ),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.eduDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),

                    //charitable
                    DataRow(cells: [
                      _buildDataCell(
                        '${AppText.religiousSubText} '
                        ' ${AppText.religiousText}\n',
                      ),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.eduDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),

                    //charitable
                    DataRow(cells: [
                      _buildDataCell(
                        '${AppText.hospitalsSubText} '
                        ' ${AppText.hospitalsText}\n',
                      ),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.eduDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),

                    //street
                    DataRow(cells: [
                      _buildDataCell('${AppText.streetLightsSubText} '
                          '${AppText.streetLightsText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.streetDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),

                    DataRow(cells: [
                      _buildDataCell('${AppText.waterPumpSubText} '
                          '${AppText.waterPumpText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.streetDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),

                    DataRow(cells: [
                      _buildDataCell('${AppText.batteryChargingStationSubText} '
                          '${AppText.batteryChargingStationText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.batteryDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),
                    DataRow(cells: [
                      _buildDataCell('${AppText.commercialOfficeSubText} '
                          '${AppText.commercialOfficeText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.officeDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),

                    DataRow(cells: [
                      _buildDataCell('${AppText.temporarySubText} '
                          '${AppText.temporaryText}'),
                      _buildDataCell(AppText.flatTariff),
                      _buildDataCell(AppText.tempoDemand),
                      _buildDataCell(AppText.unitDash),
                    ]),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

//
DataColumn _buildDataColumn(String dataColumnName) {
  return DataColumn(
      label: Center(child: Text(dataColumnName)),
      headingRowAlignment: MainAxisAlignment.center);
}

DataCell _buildDataCell(dataCellName) {
  return DataCell(
    Center(child: Text(dataCellName)),
  );
}
