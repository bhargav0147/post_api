import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiHelper
{
    String link='https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php';

    Future<bool> getData({name, price, offer, cate, rate, desc})
    async {
      var response = await http.post(Uri.parse(link),body:
      {
        "p_name":name,
        "p_price":price,
        "p_offer":offer,
        "p_category":cate,
        "p_rate":rate,
        "p_desc":desc,
      });
      var json=jsonDecode(response.body);

        if(json[0]["status"]=='ok')
        {
            return true;
        }
        else
        {
          return false;
        }
    }
}