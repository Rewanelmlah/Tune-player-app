import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';
class TuneView extends StatelessWidget {
  const TuneView({super.key});
   final List<TuneModel>tunes =const[
     TuneModel(color: Color(0xff642727), sound: 'note1.wav'),
     TuneModel(color: Color(0xff7A3336), sound: 'note2.wav'),
     TuneModel(color: Color(0xff9D5454), sound: 'note3.wav'),
     TuneModel(color: Color(0xffB6828F), sound: 'note4.wav'),
     TuneModel(color: Color(0xffE7989D), sound: 'note5.wav'),
     TuneModel(color: Color(0xffAD5666), sound: 'note6.wav'),
     TuneModel(color: Color(0xffB38184), sound: 'note7.wav')
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff37120A), elevation: 0,
          title: Text('Flutter Tune',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e),
        ).toList(),

      ),);
  }
}
