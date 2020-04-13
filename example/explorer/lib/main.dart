import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'volumes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.light,
      home: Scaffold(
        body: VolumeListView(),
      ),
    );
  }
}

class VolumeListView extends StatefulWidget {
  @override
  _VolumeListViewState createState() => _VolumeListViewState();
}

class _VolumeListViewState extends State<VolumeListView> {
  final List<Volume> _volumes = [];

  @override
  void initState() {
    super.initState();

    _volumes.addAll(Volumes().getVolumes());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ListView.builder(
          itemCount: _volumes.length,
          itemBuilder: (context, position) {
            return VolumeCard(
              volume: _volumes[position],
            );
          }),
    );
  }
}

class VolumeCard extends StatefulWidget {
  VolumeCard({Key key, this.volume}) : super(key: key);

  final Volume volume;

  @override
  _VolumeCardState createState() => _VolumeCardState();
}

class _VolumeCardState extends State<VolumeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.hdd,
                      size: 32, color: Colors.blueGrey),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.volume.deviceName,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          widget.volume.volumeName,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Theme.of(context).textTheme.caption.color),
                        ),
                        Divider(height: 5),
                        Column(
                          children: [
                            for (var path in widget.volume.paths)
                              Text(
                                path,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
