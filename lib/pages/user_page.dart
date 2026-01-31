import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final scrollController = ScrollController();
  final List<_GridItem> _items = const [
    _GridItem('https://picsum.photos/id/1015/800/800', likes: 82, comments: 4),
    _GridItem('https://picsum.photos/id/1027/800/800', likes: 41, comments: 2),
    _GridItem('https://picsum.photos/id/1024/800/800', likes: 58, comments: 3),
    _GridItem('https://picsum.photos/id/1001/800/800', likes: 73, comments: 6),
    _GridItem('https://picsum.photos/id/1004/800/800', likes: 25, comments: 1),
    _GridItem('https://picsum.photos/id/1005/800/800', likes: 90, comments: 7),
  ];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: MyUserAppbar(
              offset: scrollController.hasClients ? scrollController.offset : 0,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => _PostTile(item: _items[index]),
                childCount: _items.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyUserAppbar extends StatelessWidget {
  final double offset;
  MyUserAppbar({super.key, required this.offset});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final progress = offset / width;
    final expanded = progress < 0.04;
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: double.infinity,
      height: width - (expanded ? 0 : width - 260),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              padding: EdgeInsets.only(
                top: expanded ? 0 : MediaQuery.of(context).viewPadding.top + 24,
              ),
              alignment: expanded ? null : Alignment.center,
              width: expanded ? width : 180,
              height: expanded ? width : 180,
              child: CircleAvatar(
                radius: width / 2,
                backgroundColor: Colors.grey.shade700,
                child: const Icon(Icons.person, color: Colors.white, size: 64),
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 24,
            child: AnimatedAlign(
              duration: Duration(milliseconds: 200),
              curve: Curves.fastOutSlowIn,
              alignment: expanded ? Alignment.centerLeft : Alignment.center,
              child: Column(
                children: [
                  Text(
                    'User name',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                    ),
                  ),
                  Text('Canada'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GridItem {
  final String url;
  final int likes;
  final int comments;
  const _GridItem(this.url, {required this.likes, required this.comments});
}

class _PostTile extends StatelessWidget {
  final _GridItem item;
  const _PostTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            item.url,
            fit: BoxFit.cover,
            errorBuilder:
                (context, error, stackTrace) => Container(
                  color: Colors.grey.shade800,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.image_not_supported,
                    color: Colors.white,
                  ),
                ),
          ),
          Container(color: Colors.black26),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.favorite, color: Colors.white, size: 20),
                const SizedBox(width: 6),
                Text(
                  '${item.likes}',
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 16),
                const Icon(Icons.chat_bubble, color: Colors.white, size: 20),
                const SizedBox(width: 6),
                Text(
                  '${item.comments}',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
