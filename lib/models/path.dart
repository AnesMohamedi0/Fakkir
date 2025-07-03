class MapPath {
  final double startX;
  final double startY;
  final double endX;
  final double endY;
  final double controlX;
  final double controlY;
  final int? mapId;

  MapPath({
    required this.startX,
    required this.startY,
    required this.endX,
    required this.endY,
    required this.controlX,
    required this.controlY,
    this.mapId,
  });
}
