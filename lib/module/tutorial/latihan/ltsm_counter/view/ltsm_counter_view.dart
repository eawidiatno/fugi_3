import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtsmCounterView extends StatefulWidget {
  const LtsmCounterView({Key? key}) : super(key: key);

  Widget build(context, LtsmCounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmCounter"),
        actions: const [],
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*
                ? 1. ambil variabel counter, tampilkan ke dalam text
                ! controller.counter lalu tampilkan di dalam Text("")
          
                ? 2. buat sebuah button, dan tambahkan event ini di dalam event onPressed()
                ! ketika di klik, panggil fungsi updateCounter()
                ! contoh: controller.updateCounter();
                */
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "${controller.counter}",
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    controller.updateCounter();
                    controller.setState(() {});
                  },
                  child: const Text("UpdateCounter"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmCounterView> createState() => LtsmCounterController();
}
