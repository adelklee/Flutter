class Movie {
  int idx;
  String title;
  String regDate;
  String orgNm;

  Movie(this.idx, this.title, this.regDate, this.orgNm);

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    this.idx = parsedJson['idx'];
    this.title = parsedJson['title'];
    this.regDate = parsedJson['regDate'];
    this.orgNm = parsedJson['orgNm'];
  }
}
