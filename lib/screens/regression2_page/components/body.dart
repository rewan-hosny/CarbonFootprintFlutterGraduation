import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/regression1_page/regression1_screen.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../models/prediction_request_model.dart';
import '../../../services/api_service.dart';
import '../../../size_config.dart';
import '../../articles/article_screen.dart';
import '../../home_page/home_page_screen.dart';
import '../../plant1_page/plant1_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.dates}) : super(key: key);
  final Map<String,String> dates;
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  late List<_ChartData> data;
   List<_ChartData> tempDataList=[];
  late TooltipBehavior _tooltip;

 //
  // buildRow(['2014','20772752 Kg','']),
  // buildRow(['2015','20682574 Kg','']),
  // buildRow(['2016','20662808 Kg','']),
  // buildRow(['2017','20658340 Kg','']),
  // buildRow(['2018','20657308 Kg','']),
  // buildRow(['2019','20657068 Kg','']),
  // buildRow(['2020','20657012 Kg','']),
  // buildRow(['2021','20656998 Kg','']),
  // buildRow(['2022','20656996 Kg','']),
  // buildRow(['2023','20656994 Kg','']),


var list = [
  ['2010','15384453 Kg','Lowest'],
  ['2011','15426631 Kg',''],
  ['2012','16547688 Kg',''],
  ['2013','21220584 Kg','Highest'],
  ['2014','20772752 Kg',''],
  ['2015','20682574 Kg',''],
  ['2016','20662808 Kg',''],
  ['2017','20658340 Kg',''],
  ['2018','20657308 Kg',''],
  ['2019','20657068 Kg',''],
  ['2020','20657012 Kg',''],
  ['2021','20656998 Kg',''],
  ['2022','20656996 Kg',''],
  ['2023','20656994 Kg','']
];

 List<List<String>>myList=[

   ['2010','15384453 Kg','Lowest'],
   ['2011','15426631 Kg',''],
   ['2012','16547688 Kg',''],
   ['2013','21220584 Kg','Highest'],
   ['2014','20772752 Kg',''],
   ['2015','20682574 Kg',''],
   ['2016','20662808 Kg',''],
   ['2017','20658340 Kg',''],
   ['2018','20657308 Kg',''],
   ['2019','20657068 Kg',''],
   ['2020','20657012 Kg',''],
   ['2021','20656998 Kg',''],
   ['2022','20656996 Kg',''],
   ['2023','20656994 Kg','']


 ];
  @override

  void initState() {

    print("test passed map");
    print(widget.dates["start"]);

    PredectionRequestModel model = PredectionRequestModel(
      start: "2010",
      end:"2020"
    );





    APIService.prediction(model).then((response) =>{
      if(response.status=="Success"){
        print("connect to end point succedd"),
        print(response.highest),
        print("test result 2015"),
        print(response.result!.s2015)

      }
      else{
        print("connection failed"),
      }

    });




    double a = ((20656996-15000000) /100);
    double b = ((20656998-15000000) /100);
    double c = ((20657012-15000000) /100);
    double d = ((20657068-15000000) /100);
    double e = ((20657308-15000000) /100);
    double f = ((20658340-15000000) /100);
    double g = ((20662808-15000000) /100);
    double h = ((20682574-15000000) /100);
    double i = ((20772752-15000000) /100);
    double j = ((21220584-15000000 )/100);
    double k = ((16547688-15000000) /100);
    double l = ((15426631-15000000 )/100);
    double m = ((15384453-15000000 ) /100);

print(a);
    print(b);
    print(c);
    print(d);
    print(e);
    print(f);
    print(g);
    print(h);
    print(i);
    print(j);
    print(k);
    print(l);
    print(m);



    data = [
      _ChartData('2022', a),
      _ChartData('2021', b),
      _ChartData('2020', c),
      _ChartData('2019', d),
      _ChartData('2018', e),
      _ChartData('2017', f),  //7  //5
      _ChartData('2016', g),
      _ChartData('2015', h),
      _ChartData('2014', i),
      _ChartData('2013', j),
      _ChartData('2012', k),  //2    //10
      _ChartData('2011', l),
      _ChartData('2010', m),

    ];
// int begin = 5;

int begin =(2022 -(int.parse(widget.dates["end"]!)));
print("begin");
print(begin);
//int end = 10;
int end =(2022-(int.parse(widget.dates["start"]!)));
    print("end");
print(end);
    for(int i=begin ; i<=end ;
    i++)
      tempDataList.add(

          data[i]



      );


    // tempDataList.add(
    //   _ChartData('2017', f)
    //
    //
    // );
    // tempDataList.add(
    //   _ChartData('2013', j),
    //
    //
    // );




    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),


      // floatingActionButton: SizedBox(
      //   width: 70,
      //   height: 70,
      //   child: FloatingActionButton(
      //     backgroundColor: Color(0xFFB4B4B4),//editttttttttt
      //     splashColor: LightModeMainColor,
      //     foregroundColor: Colors.white,
      //     elevation: 0,
      //     child: Column(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(top: 10,bottom: 5),
      //           child: Image.asset("assets/images/Icon.png",
      //             width: 25,
      //             height: 25,),
      //         ),
      //         Align(
      //           alignment: Alignment.center,
      //           child: Text("Home",
      //             style: TextStyle(fontSize: 9,),),),],),
      //     onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   notchMargin: 10,
      //   shape: CircularNotchedRectangle(),
      //   color: Colors.white,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){Navigator.pushNamed(context, Regression1Screen.routeName);},
      //               child: Image.asset("assets/images/icon-park-solid_analysis.png",
      //                 width: 25,
      //                 height: 25,
      //                 color: Color(0xFF0A7036) ,),),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Regression",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeMainColor,
      //               ),)
      //           ],
      //         ),),
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
      //               child: Image.asset("assets/images/Vector.png",
      //                 width: 25,
      //                 height: 25,),
      //             ),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Plants",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeSmallTextColor,
      //               ),)
      //           ],
      //         ),),
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
      //               child: Image.asset("assets/images/ooui_articles-ltr.png",
      //                 width: 25,
      //                 height: 25,),
      //             ),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Articles",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeSmallTextColor,
      //               ),)
      //           ],
      //         ),),
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){},
      //               child: Image.asset("assets/images/material-symbols_person.png",
      //                 width: 25,
      //                 height: 25,),),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Profile",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeSmallTextColor,
      //               ),)
      //           ],
      //         ),),
      //     ],
      //   ),
      // ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey,//edittttttttttttttttttttttttttttttttt
          elevation: 0,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 5),
                child: Image.asset("assets/images/Icon.png",
                  width: 25,
                  height: 25,),
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Home",
                  style: TextStyle(fontSize: 9,),),
              ),
            ],
          ),
          onPressed: () {  },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        flag1: true,
        flag2: false,
        flag3: false,
        flag4: false,
      ),





      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.05,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(40),
                    height: getProportionateScreenHeight(40),
                    child:
                    TextButton(
                      style: TextButton.styleFrom(
                        shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        primary: Colors.white,
                        backgroundColor: LightModeMainColor,
                      ),
                      onPressed: (){Navigator.pushNamed(context, Regression1Screen.routeName);},
                      child: Image.asset("assets/icons/mdi_arrow-back.png"
                          ,height: SizeConfig.screenHeight*0.06),
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.06,),
                  Container(
                      child: Text("Regression Statistics",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 24,
                          color: LightModeSmallTextColor
                      ),),),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight*0.07,),

              Row(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/images/analysis.png"),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.02,),
                  Text("Yearly ",
                  style: TextStyle(
                    fontSize: 21,
                    fontFamily: "Poppins",
                    color: LightModeMainColor
                  ),),
                  Text("Emmissions:",
                    style: TextStyle(
                      fontSize: 21,
                      fontFamily: "Poppins",),),
                ],
              ),

              SizedBox(height: SizeConfig.screenHeight*0.03,),


              Container(
                height: 300,
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(minimum: 0, maximum: 70000, interval: 10000),
                    tooltipBehavior: _tooltip,
                    series: <ChartSeries<_ChartData, String>>[
                      ColumnSeries<_ChartData, String>(
                          dataSource: tempDataList,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          name: 'state',

                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFF85C59D),
                              Color(0xFF9EEABA),
                            ]
                        ),
                      )
                    ]
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.03,),


              Container(
                height: 300,
                child: Table(
                  children: [
                    buildRow(['Year','Emissions','Range'],isHeader: true),

                    // buildRow(['2010','15384453 Kg','Lowest']),
                    // buildRow(['2011','15426631 Kg','']),
                    // buildRow(['2012','16547688 Kg','']),
                    // buildRow(['2013','21220584 Kg','Highest']),
                    // buildRow(['2014','20772752 Kg','']),
                    // buildRow(['2015','20682574 Kg','']),
                    // buildRow(['2016','20662808 Kg','']),
                    // buildRow(['2017','20658340 Kg','']),
                    // buildRow(['2018','20657308 Kg','']),
                    // buildRow(['2019','20657068 Kg','']),
                    // buildRow(['2020','20657012 Kg','']),
                    // buildRow(['2021','20656998 Kg','']),
                    // buildRow(['2022','20656996 Kg','']),
                    // buildRow(['2023','20656994 Kg','']),

                    // for(var item in myList)
                    //   buildRow(item)

                    for(var i=int.parse(widget.dates["startIndex"]!);

                    i<=int.parse(widget.dates["endIndex"]!)
                    ;i++)
                      buildRow(myList[i])















                  ],
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.2,)
            ],
          ),
        ),
      ),
    );
  }
  TableRow buildRow(List<String> cells, {bool isHeader=false}) => TableRow(
      children: cells.map((cell){
        final style = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: isHeader? 16 : 14,
          color: isHeader ? LightModeSmallTextColor : LightModeMainColor,);
        return Padding(
            padding: EdgeInsets.all(8),
          child: Center(
            child: Text(cell,style:style ,),
          ),
        );
      }).toList()
  );





}


class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}