import 'package:flutter/material.dart';
import 'package:frontend_auth/core/common/custom_elevated_button.dart';
import 'package:frontend_auth/core/media/app_media.dart';

class PageNotFoundView extends StatelessWidget {
  const PageNotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(
          'fl-dj-auth',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppMedia.pageNotFoundImage,
              ),
              Text(
                'Whoops!',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                'Page not found',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 30),
              CustomElevatedButton(
                onPressed: () {},
                buttonColor: Colors.red,
                text: 'Go back to home page',
              )
            ],
          ),
        ),
      ),
    );
  }
}
