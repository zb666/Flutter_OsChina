class CommonModel {
  final String icon;
  final String title;
  final String urt;
  final String statusBarColor;
  final String hideAppBar;

  CommonModel(
      {this.icon, this.title, this.urt, this.statusBarColor, this.hideAppBar});

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json['icon'],
      title: json['title'],
      urt: json['urt'],
      statusBarColor: json['statusBarColor'],
      hideAppBar: json['hideAppBar'],
    );
  }
}
