import 'package:crisp/crisp.dart';
import 'package:flutter/material.dart';

class CustomerSupport extends StatefulWidget {
  const CustomerSupport({Key? key}) : super(key: key);

  @override
  _CustomerSupportState createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<CustomerSupport> {
  CrispMain? crispMain;

  @override
  void initState() {
    super.initState();

    crispMain = CrispMain(
      websiteId: 'c40221b0-4ebc-4d5a-a969-4bb05b1c2ebd',
      locale: 'en',
    );

    crispMain!.register(
      user: CrispUser(
        email: "example@provider.com",
        avatar: 'https://avatars2.githubusercontent.com/u/16270189?s=200&v=4',
        nickname: "João Cardoso",
        phone: "5511987654321",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Customer Support'),),
      body: CrispView(
        crispMain: crispMain!,
        clearCache: false,
      ),
    ));
  }
}
