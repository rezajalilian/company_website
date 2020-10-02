import 'package:app/all_translations.dart';
import 'package:app/widgets/bottom_bar.dart';
import 'package:app/widgets/related_post.dart';
import 'package:app/widgets/responsive.dart';
import 'package:app/widgets/tag_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:html/dom.dart' as dom;
import '../_scaffold.dart';

const htmlData = """ """;

class showPost extends StatelessWidget {

  final String data;

  showPost({
    Key key,
    @required this.data,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return ScaffoldWidget(
      child: Center(
        child:ResponsiveWidget.isSmallScreen(context) ?
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 150,),
            Text('Flutter Web Advanced Navigation' , style: TextStyle(
              fontFamily: 'Vazir',
              fontWeight: FontWeight.bold,
              color: Colors.black54,
              fontSize: 25
            ),),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: screenSize.width * 0.90,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://c1.sfdcstatic.com/content/dam/blogs/ca/Blog%20Posts/sales-and-tech-open-graph.jpg'),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(8)
              ),
            ),
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.all(20),
              width: screenSize.width * 0.90,
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8 , right: 8),
                        child: Container(
                          width: 80,
                          height:80,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                            NetworkImage('data:image/png;base64,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'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Written by ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff444444)
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Dane Mackier', style: TextStyle(fontWeight: FontWeight.bold , color:Color(0xff444444) )),
                              ],
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('Lead Developer and Software Architect' , style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff444444)
                            ),),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Icon(Icons.calendar_today , color: Color(0xff000000),size: 14,),
                              ),
                              SizedBox(width: 2,),
                              Text('13 November 2019', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: Color(0xff000000)),)
                            ],
                          ),
                          SizedBox(width: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          TagItem(
                              url : '',
                              name: 'Web'
                          ),
                          TagItem(
                              url : '',
                              name: 'Flutter Web'
                          ),
                          TagItem(
                              url : '',
                              name: 'Laravel'
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20 , left: 30 , right: 30 , bottom: 20),
                  width: screenSize.width * 0.90,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8),
                  ),
                  child: html,
                )
              ],
            ),
            SizedBox(height: 40,),
            Container(
              width: screenSize.width * 0.90,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(allTranslations.text('Also_check_out') , style: TextStyle(
                  fontSize: 28 , color: Colors.black , fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SizedBox(height: 20,),
            RelatedPost(),
            SizedBox(height: 140,),
            BottomBar(),
          ],
        )
        :
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 150,),
            Text('Flutter Web Advanced Navigation' , style: TextStyle(
                fontFamily: 'Vazir',
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                fontSize: 25
            ),),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: screenSize.width * 0.60,
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://c1.sfdcstatic.com/content/dam/blogs/ca/Blog%20Posts/sales-and-tech-open-graph.jpg'),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(8)
              ),
            ),
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.all(20),
              width: screenSize.width * 0.60,
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(8),

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8 , right: 8),
                        child: Container(
                          width: 80,
                          height:80,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                            NetworkImage('data:image/png;base64,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'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Written by ',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff444444)
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Dane Mackier', style: TextStyle(fontWeight: FontWeight.bold , color:Color(0xff444444) )),
                              ],
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('Lead Developer and Software Architect' , style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff444444)
                            ),),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Icon(Icons.calendar_today , color: Color(0xff000000),size: 14,),
                              ),
                              SizedBox(width: 2,),
                              Text('13 November 2019', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: Color(0xff000000)),)
                            ],
                          ),
                          SizedBox(width: 20,),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          TagItem(
                              url : '',
                              name: 'Flutter Web'
                          ),
                          TagItem(
                              url : '',
                              name: 'Flutter Web'
                          ),
                          TagItem(
                              url : '',
                              name: 'Flutter Web'
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20 , left: 30 , right: 30 , bottom: 20),
                  width: screenSize.width * 0.60,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: html,
                )
              ],
            ),
            SizedBox(height: 40,),
            Container(
              width: screenSize.width * 0.60,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(allTranslations.text('Also_check_out') , style: TextStyle(
                    fontSize: 28 , color: Colors.black , fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SizedBox(height: 20,),
            RelatedPost(),
            SizedBox(height: 140,),
            BottomBar(),
          ],
        )
        ,
      ),
    );
  }

  Widget html = Html(
    data: """
        <div>
          <p>Today we'll go over URL navigation for Flutter web. Most of the navigation comes for free if your setup is correct. We want to cover the following things:</p>
          
          <ol>
<li>Navigate to a page in the web app using the url in the browser</li>
<li>Navigate to a page in the web app and use the parameters from the browser</li>
</ol>
          <p>What we want to achieve with the navigation is to make sure that the entire page is not swapped out, instead we only swap out the content of the page leaving the toolbar intact. To achieve that we'll make use of the builder property of the <code>MaterialApp</code>. This gives you the <code>BuildContext</code> as well as the child widget that the onGenerateRoute returns. We can use that child and place it in the content area that we define.</p>
          
          
          <!--You can pretty much put any html in here!-->
        </div>
        <div>
          <p>Today we'll go over URL navigation for Flutter web. Most of the navigation comes for free if your setup is correct. We want to cover the following things:</p>
          
          <ol>
<li>Navigate to a page in the web app using the url in the browser</li>
<li>Navigate to a page in the web app and use the parameters from the browser</li>
</ol>
          <p>What we want to achieve with the navigation is to make sure that the entire page is not swapped out, instead we only swap out the content of the page leaving the toolbar intact. To achieve that we'll make use of the builder property of the <code>MaterialApp</code>. This gives you the <code>BuildContext</code> as well as the child widget that the onGenerateRoute returns. We can use that child and place it in the content area that we define.</p>
          
          
          <!--You can pretty much put any html in here!-->
        </div>
        <div>
          <p>Today we'll go over URL navigation for Flutter web. Most of the navigation comes for free if your setup is correct. We want to cover the following things:</p>
          
          <ol>
<li>Navigate to a page in the web app using the url in the browser</li>
<li>Navigate to a page in the web app and use the parameters from the browser</li>
</ol>
          <p>What we want to achieve with the navigation is to make sure that the entire page is not swapped out, instead we only swap out the content of the page leaving the toolbar intact. To achieve that we'll make use of the builder property of the <code>MaterialApp</code>. This gives you the <code>BuildContext</code> as well as the child widget that the onGenerateRoute returns. We can use that child and place it in the content area that we define.</p>
          
          
          <!--You can pretty much put any html in here!-->
        </div>
        <div>
          <p>Today we'll go over URL navigation for Flutter web. Most of the navigation comes for free if your setup is correct. We want to cover the following things:</p>
          
          <ol>
<li>Navigate to a page in the web app using the url in the browser</li>
<li>Navigate to a page in the web app and use the parameters from the browser</li>
</ol>
          <p>What we want to achieve with the navigation is to make sure that the entire page is not swapped out, instead we only swap out the content of the page leaving the toolbar intact. To achieve that we'll make use of the builder property of the <code>MaterialApp</code>. This gives you the <code>BuildContext</code> as well as the child widget that the onGenerateRoute returns. We can use that child and place it in the content area that we define.</p>
          
          
          <!--You can pretty much put any html in here!-->
        </div>
      """,
    style: {
//            "h1": Style(
//              textAlign: TextAlign.center,
//            ),
      "html": Style(
        color: Color(0xff24292e),
        fontWeight: FontWeight.w500,
        fontSize: FontSize.large
      ),
      "tr": Style(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      "th": Style(
        padding: EdgeInsets.all(6),
        backgroundColor: Colors.grey,
      ),
      "td": Style(
        padding: EdgeInsets.all(6),
      ),
      "var": Style(fontFamily: 'serif'),
    },


    //Optional parameters:

    onImageTap: (src) {
      // Display the image in large form.
    },
  );
}
