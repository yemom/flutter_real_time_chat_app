import 'package:flutter/material.dart';

import 'package:myfirst_flutter_project/component/post_item.dart';
import 'package:myfirst_flutter_project/config/app_icon.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/pages/tool_bar.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final token = context.read<AppRepo>().token;
      if (token != null && token.isNotEmpty) {
        context.read<PostProvider>().getPost(token);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppString.home,
        actions: [
          IconButton(
            tooltip: 'Logout',
            onPressed: () {
              // Clear session and go to login
              context.read<AppRepo>().token = null;
              context.read<AppRepo>().user = null;
              Navigator.of(context).pushReplacementNamed(AppRoute.login);
            },
            icon: const Icon(Icons.logout),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.nearby);
            },
            icon: AppIcon.svg(AppIcon.location),
          ),
        ],
      ),
      body: Consumer<PostProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (value.error != null) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      value.error!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.redAccent),
                    ),
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {
                      final token = context.read<AppRepo>().token;
                      if (token != null && token.isNotEmpty) {
                        context.read<PostProvider>().getPost(token);
                      }
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }
          if (value.list.isEmpty) {
            return const Center(child: Text('No posts yet.'));
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              return PostItem(post: value.list[index]);
            },
            itemCount: value.list.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 24);
            },
          );
        },
      ),
    );
  }
}
