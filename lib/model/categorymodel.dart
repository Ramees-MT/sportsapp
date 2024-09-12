class CategoryModel {
  String? name;
  String? slug;
  String? primaryColorHex;
  String? secondaryColorHex;
  Category? category;
  int? userCount;
  int? id;
  bool? displayInverseHomeAwayTeams;

  CategoryModel(
      {this.name,
      this.slug,
      this.primaryColorHex,
      this.secondaryColorHex,
      this.category,
      this.userCount,
      this.id,
      this.displayInverseHomeAwayTeams});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    primaryColorHex = json['primaryColorHex'];
    secondaryColorHex = json['secondaryColorHex'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    userCount = json['userCount'];
    id = json['id'];
    displayInverseHomeAwayTeams = json['displayInverseHomeAwayTeams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['primaryColorHex'] = this.primaryColorHex;
    data['secondaryColorHex'] = this.secondaryColorHex;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['userCount'] = this.userCount;
    data['id'] = this.id;
    data['displayInverseHomeAwayTeams'] = this.displayInverseHomeAwayTeams;
    return data;
  }
}

class Category {
  String? name;
  String? slug;
  Sport? sport;
  int? id;
  String? flag;

  Category({this.name, this.slug, this.sport, this.id, this.flag});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    sport = json['sport'] != null ? new Sport.fromJson(json['sport']) : null;
    id = json['id'];
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    if (this.sport != null) {
      data['sport'] = this.sport!.toJson();
    }
    data['id'] = this.id;
    data['flag'] = this.flag;
    return data;
  }
}

class Sport {
  String? name;
  String? slug;
  int? id;

  Sport({this.name, this.slug, this.id});

  Sport.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['id'] = this.id;
    return data;
  }
}
