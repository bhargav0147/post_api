import 'package:flutter/foundation.dart';
import 'package:post_api/utils/api_helper.dart';

class PostProvider extends ChangeNotifier
{
  ApiHelper apiHelper = ApiHelper();

  void getJson({
    price1,
    cate1,
    rate1,
    name1,
    desc1,
    offer1,
  })
  {
    apiHelper.getData(price: price1,cate: cate1,rate: rate1,name: name1,desc: desc1,offer: offer1,);
    notifyListeners();
  }
}