class ProfileModel {
  ProfileModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  int count;
  String next;
  String previous;
  List<ProfileResult> results;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        count: json["count"] ?? 0,
        next: json["next"] ?? " ",
        previous: json["previous"] ?? " ",
        results: List<ProfileResult>.from(
            json["results"].map((x) => ProfileResult.fromJson(x))),
      );
}

class ProfileResult {
  ProfileResult({
    required this.id,
    required this.salonName,
    required this.address,
    required this.phone,
    required this.image,
    required this.dateCreated,
    required this.dateUpdated,
    required this.account,
  });

  int id;
  String salonName;
  String address;
  String phone;
  String image;
  DateTime dateCreated;
  DateTime dateUpdated;
  int account;

  factory ProfileResult.fromJson(Map<String, dynamic> json) => ProfileResult(
        id: json["id"]?? 0,
        salonName: json["salon_name"]?? " ",
        address: json["address"]??" ",
        phone: json["phone"]?? " ",
        image: json["image"]?? " ",
        dateCreated: json["date_created"] == null
           ? DateTime.now()
           : DateTime.parse(json["date_created"]),
        dateUpdated:json["date_updated"] == null
           ? DateTime.now()
           : DateTime.parse(json["date_updated"]),
        account: json["account"]?? 0,
      );
}


