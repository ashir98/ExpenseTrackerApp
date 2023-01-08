import 'package:gsheets/gsheets.dart';

class GoogleSheetsApi{

  static const _credentials = "";




  static final _spreadSheetId = "";
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _worksheet;


  Future init()async{
    final ss = await _gsheets.spreadsheet(_spreadSheetId);
    _worksheet = ss.worksheetByTitle("WorkSheet1");
  }
}