import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presensi_app/dashboard_page.dart';
import 'package:presensi_app/presentation/home/pages/checkin_page.dart';

import '../bloc/face_scanner/face_scanner_bloc.dart';

class RegisterFace extends StatefulWidget {
  const RegisterFace({super.key});

  @override
  State<RegisterFace> createState() => _RegisterFaceState();
}

class _RegisterFaceState extends State<RegisterFace> {
  @override
  void initState() {
    context.read<FaceScannerBloc>().add(const FaceScannerEvent.loadCamera());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildHandleCameraPreview(context));
  }

  showDialogue(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Infromasi", textAlign: TextAlign.center),
        alignment: Alignment.center,
        content: SizedBox(
          height: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                message,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardPage(
                                  currentTab: 0,
                                )));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 40)),
                  child: const Text("Kembali"))
            ],
          ),
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }

  Widget _buildHandleCameraPreview(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return BlocListener<FaceScannerBloc, FaceScannerState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          registeredFace: (message) => showDialogue(message),
        );
      },
      child: BlocBuilder<FaceScannerBloc, FaceScannerState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => CircularProgressIndicator(),
            error: (message) => Center(
              child: Text(message),
            ),
            cameraReady: (controller) => Stack(
              children: [
                ClipRect(
                  clipper: _MediaSizeClipper(mediaSize),
                  child: Transform.scale(
                    scale: 1 /
                        (controller.value.aspectRatio * mediaSize.aspectRatio),
                    alignment: Alignment.topCenter,
                    child: CameraPreview(
                      controller,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.2, // Menyesuaikan transparansi overlay
                    child: Image.asset(
                      'images/face-outline.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _MediaSizeClipper extends CustomClipper<Rect> {
  final Size mediaSize;
  const _MediaSizeClipper(this.mediaSize);
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, mediaSize.width, mediaSize.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
