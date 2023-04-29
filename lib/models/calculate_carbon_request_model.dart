class CalculateCarbonRequestModel {
  String? distKm;
  String? carType;
  String? foodType;
  String? paper;
  String? package;
  String? wfood;
  String? water;
  String? cigarettes;

  CalculateCarbonRequestModel(
      {this.distKm,
        this.carType,
        this.foodType,
        this.paper,
        this.package,
        this.wfood,
        this.water,
        this.cigarettes});

  CalculateCarbonRequestModel.fromJson(Map<String, dynamic> json) {
    distKm = json['dist_km'];
    carType = json['car_type'];
    foodType = json['food_type'];
    paper = json['paper'];
    package = json['package'];
    wfood = json['wfood'];
    water = json['water'];
    cigarettes = json['cigarettes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dist_km'] = this.distKm;
    data['car_type'] = this.carType;
    data['food_type'] = this.foodType;
    data['paper'] = this.paper;
    data['package'] = this.package;
    data['wfood'] = this.wfood;
    data['water'] = this.water;
    data['cigarettes'] = this.cigarettes;
    return data;
  }
}
