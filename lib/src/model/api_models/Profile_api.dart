

class ProfileModel {
  ProfileModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  int count;
  String next;
  dynamic previous;
  List<Result> results;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    required this.id,
    required this.salonName,
    required this.address,
    required this.phone,
    required this.dateCreated,
    required this.dateUpdated,
    required this.account,
  });

  int id;
  String salonName;
  String address;
  String phone;
  DateTime dateCreated;
  DateTime dateUpdated;
  int account;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    salonName: json["salon_name"],
    address: json["address"],
    phone: json["phone"],
    dateCreated: DateTime.parse(json["date_created"]),
    dateUpdated: DateTime.parse(json["date_updated"]),
    account: json["account"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "salon_name": salonName,
    "address": address,
    "phone": phone,
    "date_created": dateCreated.toIso8601String(),
    "date_updated": dateUpdated.toIso8601String(),
    "account": account,
  };
}
