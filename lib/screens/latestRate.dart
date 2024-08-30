import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_app/Rate.dart';

class LatestRate extends StatefulWidget {
  const LatestRate({super.key});

  @override
  State<LatestRate> createState() => _LatestRateState();
}

class _LatestRateState extends State<LatestRate> {

  @override
  initState() {
    super.initState();
    print("Init State");
  }
  Future<Rate> getRate() async {
    var params = {
      "base": "THB"
    };
    var uri = Uri.https("currency-converter-pro1.p.rapidapi.com", "/latest-rate", params);

    var result = await http.get(uri, headers: {
      "X-RapidAPI-Host": "currency-converter-pro1.p.rapidapi.com",
      "x-rapidapi-key": "C05GBKbyg0mshuD0FmkuTgEJe7mQp1QktrHjsndVBQ98Lef6WS"
    });

    Rate rate = rateFromJson(result.body);
    print(rate.toString());
    return rate;
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}