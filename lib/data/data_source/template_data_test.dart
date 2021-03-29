import 'package:flutter_aba_clone_learning/data/model/template_model.dart';

class TemplateDataTest {
  static Future<List<TemplateModel>> demoTemplate() async {
    var list = await [
      TemplateModel(name: 'Chan Charikya', account: '000 333 221'),
      TemplateModel(name: 'Serey Dara', account: '032 353 234'),
      TemplateModel(name: 'Keo Chesda', account: '123 221 344'),
      TemplateModel(name: 'Doung Sereyrath', account: '321 333 221'),
      TemplateModel(name: 'Chan khmer', account: '344 131 241'),
      TemplateModel(name: 'dara vitou', account: '445 223 211'),
    ];
    return list;
  }
}
