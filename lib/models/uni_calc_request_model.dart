class UniCalcRequestModel {
  String? water;
  String? paper;
  String? gas;
  String? hvac;
  String? nonHvac;
  String? dist;
  String? year;

  UniCalcRequestModel(
      {this.water,
        this.paper,
        this.gas,
        this.hvac,
        this.nonHvac,
        this.dist,
        this.year});

  UniCalcRequestModel.fromJson(Map<String, dynamic> json) {
    water = json['water'];
    paper = json['paper'];
    gas = json['gas'];
    hvac = json['hvac'];
    nonHvac = json['nonHvac'];
    dist = json['dist'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['water'] = this.water;
    data['paper'] = this.paper;
    data['gas'] = this.gas;
    data['hvac'] = this.hvac;
    data['nonHvac'] = this.nonHvac;
    data['dist'] = this.dist;
    data['year'] = this.year;
    return data;
  }
}
