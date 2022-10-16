class DriverRequest{
  final int id;
  final geoJson;
  final DateTime startTime;
  final DateTime endTime;
  final String comment;

  DriverRequest(this.id, this.geoJson, this.startTime, this.endTime , this.comment);
}