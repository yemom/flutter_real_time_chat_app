import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:myfirst_flutter_project/component/toolbar.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/provider/user_provider.dart';
import 'package:provider/provider.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

import '../data/model/user.dart';

class NearbyPage extends StatefulWidget {
  const NearbyPage({super.key});

  @override
  State<NearbyPage> createState() => _NearbyPageState();
}

class _NearbyPageState extends State<NearbyPage> {
  final pageController = PageController(viewportFraction: 0.9);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppString.nearby),
      body: FutureBuilder<List<User>>(
        future: context.read<UserProvider>().getAllUser(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final users = snapshot.data!;
          final usersWithLocation =
              users.where((u) => u.location != null).toList();
          final center =
              usersWithLocation.isNotEmpty
                  ? LatLng(
                    usersWithLocation.first.location!.lat,
                    usersWithLocation.first.location!.lng,
                  )
                  : LatLng(51.509364, -0.128928);
          return Stack(
            children: [
              FlutterMap(
                options: MapOptions(center: center, zoom: 10),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'dev.ces.flutter',
                    // tileProvider: NetworkTileProvider(),
                  ),
                  MarkerLayer(
                    markers:
                        usersWithLocation.map<Marker>((user) {
                          return Marker(
                            width: 200,
                            height: 100,
                            point: LatLng(
                              user.location?.lat ?? 0,
                              user.location?.lng ?? 0,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                var page = 0;
                                for (
                                  var i = 0;
                                  i < usersWithLocation.length;
                                  i++
                                ) {
                                  if (usersWithLocation[i].id == user.id) {
                                    page = i;
                                    break;
                                  }
                                }
                                pageController.animateToPage(
                                  page,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeIn,
                                );
                                _showUserInfo(context, user);
                              },
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(14),
                                      ),
                                    ),
                                    child: Text(
                                      '${user.firstname ?? ''} ${user.lastname ?? ''}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Container(
                                    width: 14,
                                    height: 14,
                                    decoration: const BoxDecoration(
                                      color: Colors.redAccent,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                ],
              ),
              // Removed bottom card list; show only markers on the map.
            ],
          );
        },
      ),
    );
  }
}

void _showUserInfo(BuildContext context, User user) {
  final name = _displayName(user);
  final message = _statusMessage(user);

  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.blueGrey.shade100,
                  child: Text(
                    _initialsForUser(user),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        message,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (user.location?.name?.isNotEmpty ?? false) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      user.location!.name,
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Follow'),
              ),
            ),
          ],
        ),
      );
    },
  );
}

String _displayName(User user) {
  final first = (user.firstname ?? '').trim();
  final last = (user.lastname ?? '').trim();
  final full = [first, last].where((value) => value.isNotEmpty).join(' ');
  if (full.isNotEmpty) return full;
  final username = (user.username ?? '').trim();
  return username.isNotEmpty ? username : 'Unknown user';
}

String _statusMessage(User user) {
  final username = (user.username ?? '').trim();
  if (username.isNotEmpty) return '@$username';
  final mobile = (user.mobile ?? '').trim();
  if (mobile.isNotEmpty) return mobile;
  return 'Tap to view profile';
}

String _initialsForUser(User user) {
  final name = _displayName(user);
  final parts = name.split(' ').where((part) => part.isNotEmpty).toList();
  if (parts.isEmpty) return '?';
  if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
  return (parts.first.substring(0, 1) + parts.last.substring(0, 1))
      .toUpperCase();
}

ui.Path _getPath(Size size) {
  final path = ui.Path();
  path.moveTo(size.width / 2, size.height);
  path.quadraticBezierTo(-1, (size.height / 2) + 12, 0, size.height / 2);
  final rect = Rect.fromCenter(
    center: Offset(size.width / 2, size.height / 2),
    width: size.width,
    height: size.height - 6,
  );
  path.arcTo(rect, math.pi, math.pi, true);
  path.quadraticBezierTo(
    size.width + 1,
    (size.height / 2) + 12,
    size.width / 2,
    size.height,
  );
  return path;
}

class MarkerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;

    canvas.drawPath(_getPath(size), paint);
    canvas.drawShadow(_getPath(size), Colors.black87, 6, false);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MarkerClipper extends CustomClipper<ui.Path> {
  @override
  ui.Path getClip(Size size) {
    return _getPath(size);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
