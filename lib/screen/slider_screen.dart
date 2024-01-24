import 'package:flutter/material.dart';
import 'package:fluttertutorials/provider/Slider_Provider.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 1.0;
  @override
  Widget build(BuildContext context) {
    print("Entire Widget Build");
    final provider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderScreen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(
              builder: (context, changedSliderValue, child) {
            return Slider(
                min: 0,
                max: 1,
                value: changedSliderValue.sliderValue,
                onChanged: (val) {
                  print("Slider Widget Build");
                  // sliderValue = val;
                  provider.setSliderValue(val);
                });
          }),
          Consumer<SliderProvider>(
              builder: (context, changedSliderValue, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(provider.sliderValue)),
                    child: Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent
                            .withOpacity(provider.sliderValue)),
                    child: Center(
                      child: Text('Container 2'),
                    ),
                  ),
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}
