import 'package:fe_pay/components/constants.dart';
import 'package:fe_pay/screens/bank_screens/manage_bank_screen.dart';
import 'package:fe_pay/screens/bank_screens/update_bank_screen.dart';
import 'package:fe_pay/screens/contact_screen/manage_contact_screen.dart';
import 'package:fe_pay/screens/exchange_screen/add_success_screen.dart';
import 'package:fe_pay/screens/history_screens/transfer_history_detail_screen.dart';
import 'package:fe_pay/screens/history_screens/transfer_history_screen.dart';
import 'package:fe_pay/screens/transfer_screen/request/advanced_req_screen.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_add_screen.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_add_2_screen.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_bank_choice_screen.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_withdraw_acc_setting_screen.dart';
import 'package:fe_pay/screens/exchange_screen/exchange_withdraw_screen.dart';
import 'package:fe_pay/screens/exchange_screen/withdraw_success_screen.dart';
import 'package:fe_pay/screens/notification_screen/notification_screen.dart';
import 'package:fe_pay/screens/transfer_screen/request/transfer_req_amnt_screen.dart';
import 'package:fe_pay/screens/transfer_screen/request/transfer_req_status_screen.dart';
import 'package:fe_pay/screens/transfer_screen/send/advanced_send_screen.dart';
import 'package:fe_pay/screens/transfer_screen/send/transfer_send_amnt_screen.dart';
import 'package:fe_pay/screens/transfer_screen/send/transfer_send_status_screen.dart';
import 'package:fe_pay/screens/user_screens/change_password_screen.dart';
import 'package:fe_pay/screens/user_screens/change_password_success_screen.dart';
import 'package:fe_pay/screens/user_screens/edit_profile_screen.dart';
import 'package:fe_pay/screens/user_screens/log_in_screen.dart';
import 'package:fe_pay/screens/user_screens/otp_screen.dart';
import 'package:fe_pay/screens/user_screens/profile_screen.dart';
import 'package:fe_pay/screens/user_screens/reset_password_screen.dart';
import 'package:fe_pay/screens/spinning_splash/spinkit_loading_screen.dart';
import 'package:fe_pay/screens/spinning_splash/splash_screen.dart';
import 'package:fe_pay/screens/user_screens/submit_otp_screen.dart';
import 'package:fe_pay/screens/user_screens/user_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'screens/user_screens/log_in_screen_default.dart';
import 'screens/user_screens/sign_up_screen.dart';

void main() {
  runApp(FePay());
}

class FePay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SpinKitLoadingScreen.id,
      title: 'FePay',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        fontFamily: 'Roboto',
      ),
      routes: {
        SpinKitLoadingScreen.id: (context) => SpinKitLoadingScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        LogInScreenDefault.id: (context) => LogInScreenDefault(),
        LogInScreen.id: (context) => LogInScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        OTPScreen.id: (context) => OTPScreen(),
        SubmitOtpScreen.id: (context) => SubmitOtpScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        EditProfileScreen.id: (context) => EditProfileScreen(),
        ChangePassScreen.id: (context) => ChangePassScreen(),
        ResetPasswordScreen.id: (context) => ResetPasswordScreen(),
        ChangePasswordSuccessScreen.id: (context) =>
            ChangePasswordSuccessScreen(),
        ManageBankScreen.id: (context) => ManageBankScreen(),
        UpdateBankScreen.id: (context) => UpdateBankScreen(),
        ManageContactScreen.id: (context) => ManageContactScreen(),
        UserDashboardScreen.id: (context) => UserDashboardScreen(),
        NotificationScreen.id: (context) => NotificationScreen(),
        ExchangeAddScreen.id: (context) => ExchangeAddScreen(),
        ExchangeWithdrawAccSettScreen.id: (context) =>
            ExchangeWithdrawAccSettScreen(),
        ExchangeAddScreen2.id: (context) => ExchangeAddScreen2(),
        AddSuccessScreen.id: (context) => AddSuccessScreen(),
        ExchangeWithDrawScreen.id: (context) => ExchangeWithDrawScreen(),
        ExchangeBankChoiceScreen.id: (context) => ExchangeBankChoiceScreen(),
        WithDrawSuccessScreen.id: (context) => WithDrawSuccessScreen(),
        TransferReqAmntScreen.id: (context) => TransferReqAmntScreen(),
        AdvancedReqScreen.id: (context) => AdvancedReqScreen(),
        TransferReqStatusScreen.id: (context) => TransferReqStatusScreen(),
        TransferSendAmntScreen.id: (context) => TransferSendAmntScreen(),
        AdvancedSendScreen.id: (context) => AdvancedSendScreen(),
        TransferSendStatusScreen.id: (context) => TransferSendStatusScreen(),
        TransferHistoryScreen.id: (context) => TransferHistoryScreen(),
        TransferHistoryDetailScreen.id: (context) =>
            TransferHistoryDetailScreen()
      },
    );
  }
}
