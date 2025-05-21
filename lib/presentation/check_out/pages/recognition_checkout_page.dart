import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presensi_app/data/datasource/face_remote_datasource.dart';
import 'package:presensi_app/data/datasource/presensi_remote_datasource.dart';
import 'package:presensi_app/presentation/check_out/bloc/checkout/checkout_bloc.dart';
import 'package:presensi_app/presentation/presensi_success/presensi_success_page.dart';

// import '../bloc/face_scanner/face_scanner_bloc.dart';

class RecognitionCheckoutPage extends StatefulWidget {
  const RecognitionCheckoutPage({super.key});

  @override
  State<RecognitionCheckoutPage> createState() => _RecognitionScreenState();
}

class _RecognitionScreenState extends State<RecognitionCheckoutPage> {
  @override
  void initState() {
    context.read<CheckoutBloc>().add(const CheckoutEvent.loadCamera());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildHandleCameraPreview(context),
    );
  }

  showFaceRecognitionDialogue(int status, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Face Recognition", textAlign: TextAlign.center),
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
                    status == 200
                        ? context
                            .read<CheckoutBloc>()
                            .add(const CheckoutEvent.checkOutPresensi())
                        : context
                            .read<CheckoutBloc>()
                            .add(const CheckoutEvent.loadCamera());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 40)),
                  child: status == 200
                      ? const Text("Presensi Pulang")
                      : const Text("Coba Lagi"))
            ],
          ),
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }

  Widget _buildHandleCameraPreview(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return BlocListener<CheckoutBloc, CheckoutState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (recognitions) {
            if (recognitions.distance < 1.0) {
              return showFaceRecognitionDialogue(200, 'Wajah Anda Sama');
              // return Center(child: Text('Wajah Anda Sama'));
            } else {
              return showFaceRecognitionDialogue(400, 'Wajah Anda Tidak Sama');
              // return Center(child: Text('Wajah Anda Tidak Sama'));
            }
          },
          checkOutLoaded: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => PresensiSuccessPage(),
              ),
            );
          },
          error: (message) {
            return showFaceRecognitionDialogue(400, message);
          },
        );
      },
      child: BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Center(child: CircularProgressIndicator()),
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
