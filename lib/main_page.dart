import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'calendar.dart';
import 'lectures_details.dart';

class Lectures extends StatefulWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  State<Lectures> createState() => _LecturesState();
}

class _LecturesState extends State<Lectures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      appBar: AppBar(
        title: Text("Ana Sayfa"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Akademi Nisan ayına hoş geldin!",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Görevlerin seni bekliyor.",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: SizedBox(
                        height: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LectureDetails(
                                  lectureTitle:
                                  "Oyun ve Uygulama Geliştirme",
                                  lectureColor: Colors.blueAccent,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          child: Text(
                            "Oyun ve Uygulama Geliştirme Eğitimleri",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ), //Flexible
                    SizedBox(
                      width: 20,
                    ), //SizedBox
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: SizedBox(
                        height: 300,
                        child: Container(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LectureDetails(
                                    lectureTitle: "Google Proje Yönetimi Eğitimi",
                                    lectureColor: Colors.red,
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10),
                            ),
                            child: Text(
                              "Google Proje Yönetimi Eğitimi",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ), //Container
                    ) //Flexible
                  ], //<Widget>[]
                  mainAxisAlignment: MainAxisAlignment.center,
                ), //Row
              ), //Flexible
              SizedBox(
                height: 20,
              ), //SizedBox

              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: SizedBox(
                        height: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LectureDetails(
                                  lectureTitle:
                                  "Teknoloji Girişimciliği Eğitimleri",
                                  lectureColor: Colors.amber,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          child: Text(
                            "Teknoloji Girişimciliği Eğitimleri",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ), //SizedBox
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: SizedBox(
                        height: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LectureDetails(
                                  lectureTitle: "Yazılımcılar için İngilizce",
                                  lectureColor: Colors.green,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          child: Text(
                            "Yazılımcılar için İngilizce",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ), //Container
                    ) //Flexible
                  ], //<Widget>[]
                  mainAxisAlignment: MainAxisAlignment.center,
                ), //Row
              ),
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 70,
                          animation: true,
                          animationDuration: 2000,
                          lineHeight: 22.0,
                          percent: 0.32,
                          barRadius: Radius.circular(10),
                          center: new Text(
                            "Nisan Ayı İlerlemen",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: new Text(
                            "%32",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          backgroundColor: Colors.grey,
                          progressColor: Colors.red,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                        onTap: () {
                          // Takvim ikonuna tıklandığında burada yapılacak işlemler yazılabilir.
                          // Örneğin takvim sayfasına geçiş yapılabilir.
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Calendar()),
                          );
                        },
                        child: Icon(
                          IconData(0xe858, fontFamily: 'MaterialIcons'),
                          size: 50,
                          color: Colors.indigo,
                        ))
                  ],
                ),
              ),
            ],
          ), //Column
        ), //Container
      ),
    );
  }
}
