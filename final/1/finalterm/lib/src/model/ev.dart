class Ev {
  String? idx;
  String? title;
  String? regDate;
  String? stDate;
  String? endDate;
  String? orgNm;

  Ev({
    this.idx,
    this.title,
    this.regDate,
    this.stDate,
    this.endDate,
    this.orgNm,
  });

  factory Ev.fromJson(Map<String, dynamic> json) {
    for (int i = 1; i <= 422; i++) {
      if (json["idx"] == i) json["idx"] == i;
    }
    json["title"] == Ev.fromJson(json).title;
    json["regDate"] == Ev.fromJson(json).regDate;
    json["stDate"] == Ev.fromJson(json).stDate;
    json["endDate"] == Ev.fromJson(json).endDate;
    json["orgNm"] == Ev.fromJson(json).orgNm;

    // // 충전기 타입
    // if (json["chargeTp"] == "1") {
    //   json["chargeTp"] = "충전기 타입 : 완속";
    // } else if (json["chargeTp"] == "2") {
    //   json["chargeTp"] = "충전기 타입 : 급속";
    // }

    // // 충전기 상태 코드
    // if (json["cpStat"] == "1") {
    //   json["cpStat"] = "충전기 상태 : 충전 가능";
    // } else if (json["cpStat"] == "2") {
    //   json["cpStat"] = "충전기 상태 : 충전중";
    // } else if (json["cpStat"] == "3") {
    //   json["cpStat"] = "충전기 상태 : 고장/정검";
    // } else if (json["cpStat"] == "4") {
    //   json["cpStat"] = "충전기 상태 : 통신장애";
    // } else if (json["cpStat"] == "5") {
    //   json["cpStat"] = "충전기 상태 : 통신미연결";
    // }

    // // 충전 방식
    // if (json["cpTp"] == "1") {
    //   json["cpTp"] = "충전 방식 : B타입(5핀)";
    // } else if (json["cpTp"] == "2") {
    //   json["cpTp"] = "충전 방식 : C타입(5핀)";
    // } else if (json["cpTp"] == "3") {
    //   json["cpTp"] = "충전 방식 : BC타입(5핀)";
    // } else if (json["cpTp"] == "4") {
    //   json["cpTp"] = "충전 방식 : BC타입(5핀)";
    // } else if (json["cpTp"] == "5") {
    //   json["cpTp"] = "충전 방식 : DC차데모";
    // } else if (json["cpTp"] == "6") {
    //   json["cpTp"] = "충전 방식 : AC3상";
    // } else if (json["cpTp"] == "7") {
    //   json["cpTp"] = "충전 방식 : DC콤보";
    // } else if (json["cpTp"] == "8") {
    //   json["cpTp"] = "충전 방식 : DC차데모+DC콤보";
    // } else if (json["cpTp"] == "9") {
    //   json["cpTp"] = "충전 방식 : DC차데모+AC3상";
    // } else if (json["cpTp"] == "10") {
    //   json["cpTp"] = "충전 방식 : DC차데모+DC콤보+AC3상";
    // }

    return Ev(
      idx: json["idx"] as String,
      title: json["title"] as String,
      regDate: json["regDate"] as String,
      stDate: json["stDate"] as String,
      endDate: json["endDate"] as String,
      orgNm: json["orgNm"] as String,
    );
  }
}
