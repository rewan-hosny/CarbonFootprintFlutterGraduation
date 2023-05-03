class SolarPanelRequestModel {
  int? wattsInSinglePanel;
  int? totalEnergyConsumption;
  double? panelEfficiency;

  SolarPanelRequestModel(
      {this.wattsInSinglePanel,
        this.totalEnergyConsumption,
        this.panelEfficiency});

  SolarPanelRequestModel.fromJson(Map<String, dynamic> json) {
    wattsInSinglePanel = json['watts_in_single_panel'];
    totalEnergyConsumption = json['total_energy_consumption'];
    panelEfficiency = json['panel_efficiency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['watts_in_single_panel'] = this.wattsInSinglePanel;
    data['total_energy_consumption'] = this.totalEnergyConsumption;
    data['panel_efficiency'] = this.panelEfficiency;
    return data;
  }
}
