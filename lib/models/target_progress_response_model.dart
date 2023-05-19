
import 'dart:convert';
TargetProgressResponeModel targetProgressResponeModel (String str)
=> TargetProgressResponeModel.fromJson(json.decode(str));

class TargetProgressResponeModel {
  int? targetPercent;
  SolarPanel? solarPanel;
  SmartLighting? smartLighting;

  TargetProgressResponeModel({this.targetPercent, this.solarPanel, this.smartLighting});

  TargetProgressResponeModel.fromJson(Map<String, dynamic> json) {
    targetPercent = json['Target Percent'];
    solarPanel = json['Solar Panel'] != null
        ? new SolarPanel.fromJson(json['Solar Panel'])
        : null;
    smartLighting = json['Smart Lighting'] != null
        ? new SmartLighting.fromJson(json['Smart Lighting'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Target Percent'] = this.targetPercent;
    if (this.solarPanel != null) {
      data['Solar Panel'] = this.solarPanel!.toJson();
    }
    if (this.smartLighting != null) {
      data['Smart Lighting'] = this.smartLighting!.toJson();
    }
    return data;
  }
}

class SolarPanel {
  String? status;
  int? solarPanelsNum;
  double? solarPanelsCost;

  SolarPanel({this.status, this.solarPanelsNum, this.solarPanelsCost});

  SolarPanel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    solarPanelsNum = json['Solar_Panels_Num'];
    solarPanelsCost = json['Solar_Panels_Cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['Solar_Panels_Num'] = this.solarPanelsNum;
    data['Solar_Panels_Cost'] = this.solarPanelsCost;
    return data;
  }
}

class SmartLighting {
  String? status;
  int? reducedCarbon;

  SmartLighting({this.status, this.reducedCarbon});

  SmartLighting.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    reducedCarbon = json['Reduced_Carbon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['Reduced_Carbon'] = this.reducedCarbon;
    return data;
  }
}
