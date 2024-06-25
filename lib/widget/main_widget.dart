import 'package:flutter/material.dart';
import 'package:ksw_resume/widget/TechStackPage.dart';
import 'package:ksw_resume/widget/blog_page.dart';
import 'package:ksw_resume/widget/career_page.dart';
import 'package:ksw_resume/widget/personal_project_page.dart';
import 'package:ksw_resume/widget/profile_all.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("헤더 바가 나올 예정"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "프로필"),
            Tab(text: "블로그"),
            Tab(text: "기술스택"),
            Tab(text: "경력"),
            Tab(text: "개인 프로젝트"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ProfileAll(),
          BlogPage(),
          TechStackPage(),
          CareerPage(),
          PersonalProjectPage(),
        ],
      ),
    );
  }

}
