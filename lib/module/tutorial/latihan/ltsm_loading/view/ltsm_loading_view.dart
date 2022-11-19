import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_loading_controller.dart';

class LtsmLoadingView extends StatefulWidget {
  const LtsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, LtsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmLoading"),
        actions: const [],
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                /*
                ? Buat variabel loading di dalam State/Controller
                ! bool loading = false;
          
                ? Tambahkan statement ini di dalam Column:
                if(controller.loading)
                  CircularProgressIndicator();
          
                ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
                /*
                controller.loading = controller.loading!;
                controller.setState((){});
                */
                  
                */

                if (controller.loading) const CircularProgressIndicator(),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.refresh),
                  label: const Text("Refresh"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: controller.loading == false
                          ? Colors.blueGrey
                          : Colors.green),
                  onPressed: () {
                    controller.loading = !controller.loading;
                    controller.setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmLoadingView> createState() => LtsmLoadingController();
}
