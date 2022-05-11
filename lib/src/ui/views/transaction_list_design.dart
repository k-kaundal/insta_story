import 'package:flutter/material.dart';

class TransactionListDesign extends StatefulWidget {
  const TransactionListDesign({Key? key}) : super(key: key);

  @override
  State<TransactionListDesign> createState() => _TransactionListDesignState();
}

class _TransactionListDesignState extends State<TransactionListDesign> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.blue,
                      width: size.width,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: size.height * 0.05,
                            bottom: size.height * 0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.notifications_sharp),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Text("Welcome back,",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                            SizedBox(
                              height: size.height * 0.005,
                            ),
                            Text("Thomas",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Text("Your Balance",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text("\$ 24,980.00",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 6,
                    child: Container(
                      color: Colors.black12,
                      margin: EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                          bottom: size.height * 0.09),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Text("Today"),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              // shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) => Container(
                                child: Text('Demo'),
                              ),
                            ),
                          ),
                          Text("Yesterday"),

                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              // shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) => Container(
                                child: Text('Demo'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.blue,
              width: size.width,
              height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Icon(Icons.home)),
                  Expanded(child: Icon(Icons.home)),
                  Expanded(
                      child: FloatingActionButton(
                    onPressed: () {},
                  )),
                  Expanded(child: Icon(Icons.home)),
                  Expanded(child: Icon(Icons.home)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
