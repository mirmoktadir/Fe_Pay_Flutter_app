import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_withdraw_acc_setting_screen.dart';
import 'package:fe_pay/screens/user_screens/user_dashboard_screen.dart';
import 'package:flutter/material.dart';

class ExchangeWithDrawScreen extends StatefulWidget {
  static const String id = 'ExchangeWithDrawScreen';

  @override
  _ExchangeWithDrawScreenState createState() => _ExchangeWithDrawScreenState();
}

class _ExchangeWithDrawScreenState extends State<ExchangeWithDrawScreen> {
  String tac;
  String dkk;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Exchange',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
        leadingWidth: 105,
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 32),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, UserDashboardScreen.id);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 17,
                color: Colors.black,
              ),
              Text(
                'Back',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    height: 40,
                    width: 174,
                    child: TextButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: Color(0xff828282),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    height: 40,
                    width: 174,
                    child: TextButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Withdraw',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff0070ba),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Flexible(
              child: Container(
                height: 140,
                width: 376,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 98,
                      width: MediaQuery.of(context).size.width * .25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .25,
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xff0070ba),
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                tac = value;
                              },
                              decoration: kInputTextDecoration.copyWith(
                                hintText: '50',
                                hintStyle: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0070ba),
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            child: Divider(
                              height: 1,
                              thickness: 2,
                            ),
                          ),
                          Center(
                            child: Text(
                              'TAC',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color(0xffbdbdbd),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ////////
                    Container(
                      height: 98,
                      width: MediaQuery.of(context).size.width * .25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .25,
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xffee6855),
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                dkk = value;
                              },
                              decoration: kInputTextDecoration.copyWith(
                                hintText: '50',
                                hintStyle: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffee6855),
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 35,
                            child: Divider(
                              height: 1,
                              thickness: 2,
                            ),
                          ),
                          Center(
                            child: Text(
                              'DKK',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color(0xffbdbdbd),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          '+5',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          '+10',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xff0070ba)),
                        onPressed: () {},
                        child: Text(
                          '+50',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          '+500',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, ExchangeWithdrawAccSettScreen.id);
                },
                child: Center(
                  child: Text(
                    'Withdraw',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xff0070ba),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
