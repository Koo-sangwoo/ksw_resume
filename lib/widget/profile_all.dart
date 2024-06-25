import 'package:flutter/material.dart';

class ProfileAll extends StatefulWidget {
  const ProfileAll({super.key});

  @override
  State<ProfileAll> createState() => _ProfileAllState();
}

class _ProfileAllState extends State<ProfileAll> {
  TextStyle titleStyle = TextStyle(fontSize: 21, fontWeight: FontWeight.w800);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(child: Icon(Icons.ac_unit), width: 150, height: 150, decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow
                ),)
              ],
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('한줄소개 및 제목', style: titleStyle,),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text('인적사항',),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text('인적사항 내용 적기'),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text('자기소개'),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Text('자기소개 2~5줄'),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text('경험'),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Text('들어갈 내용: 1) 회사 2) 부서/직함 3) 기간 4) 진행한 일 5) 사용한 기술 6) 성과와 수치 중심의 결과(예: 매출 신장률, 수상 경력, 언론 기사 등) 등'),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text('기술스택'),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Text('들어갈 내용: 내가 활용할 수 있는 기술'),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text('개인 프로젝트'),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Text('링크'),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Text('깃헙, 블로그...'),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Text('링크들'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
