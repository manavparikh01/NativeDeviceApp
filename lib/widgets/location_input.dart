import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:native_device/helpers/location_helper.dart';

class LocationInput extends StatefulWidget {
  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String _imagePreview;

  Future<void> _getCurrentLocation() async {
    final locData = await Location().getLocation();
    final staticMap = LocationHelper.generateLocationPreviewImage(
      latitude: locData.latitude,
      longitude: locData.longitude,
    );
    setState(() {
      _imagePreview = staticMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 170,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: _imagePreview == null
              ? Text(
                  'No location choosen',
                  textAlign: TextAlign.center,
                )
              : Image.network(
                  _imagePreview,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(
                  Icons.location_on,
                  size: 17,
                ),
                label: Text('Current Location'),
                textColor: Theme.of(context).primaryColor,
                onPressed: _getCurrentLocation,
              ),
              FlatButton.icon(
                icon: Icon(
                  Icons.map,
                  size: 17,
                ),
                label: Text('Current Location'),
                textColor: Theme.of(context).primaryColor,
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
