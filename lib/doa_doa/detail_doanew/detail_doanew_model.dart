import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detail_doanew_widget.dart' show DetailDoanewWidget;
import 'package:flutter/material.dart';

class DetailDoanewModel extends FlutterFlowModel<DetailDoanewWidget> {
  ///  Local state fields for this page.
  /// detaildoa
  List<DetaildoaStruct> detaildoa = [];
  void addToDetaildoa(DetaildoaStruct item) => detaildoa.add(item);
  void removeFromDetaildoa(DetaildoaStruct item) => detaildoa.remove(item);
  void removeAtIndexFromDetaildoa(int index) => detaildoa.removeAt(index);
  void insertAtIndexInDetaildoa(int index, DetaildoaStruct item) =>
      detaildoa.insert(index, item);
  void updateDetaildoaAtIndex(int index, Function(DetaildoaStruct) updateFn) =>
      detaildoa[index] = updateFn(detaildoa[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
