import 'dart:convert';


import 'dart:convert';
SolarPanelResponseModel solarPanelResponseModel (String str)
=> SolarPanelResponseModel.fromJson(json.decode(str));



class SolarPanelResponseModel {
  int? numSolarPanels;
  double? installationCost;
  double? totalCost;

  SolarPanelResponseModel({this.numSolarPanels, this.installationCost, this.totalCost});

  SolarPanelResponseModel.fromJson(Map<String, dynamic> json) {
    numSolarPanels = json['num_solar_panels'];
    installationCost = json['installation_cost'];
    totalCost = json['total_cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num_solar_panels'] = this.numSolarPanels;
    data['installation_cost'] = this.installationCost;
    data['total_cost'] = this.totalCost;
    return data;
  }
}
