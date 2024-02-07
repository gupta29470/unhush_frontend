import 'package:flutter/material.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class ImagesWidget extends StatelessWidget {
  final double width;

  const ImagesWidget({
    super.key,
    required this.width,
  });

  final List<String> images = const [
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cnVzc2lhbiUyMGdpcmx8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1598507619174-04d674f7fb95?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cnVzc2lhbiUyMGdpcmx8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1580882681223-9ac7aecf1ba4?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHJ1c3NpYW4lMjBnaXJsfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1568622173257-3aeade1d0a1d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHJ1c3NpYW4lMjBnaXJsfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1580566059042-9b5771d31fcb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHJ1c3NpYW4lMjBnaXJsfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1524638431109-93d95c968f03?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHJ1c3NpYW4lMjBnaXJsfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1627901841935-39d8f0fb4504?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fHJ1c3NpYW4lMjBnaXJsfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1532171875345-9712d9d4f65a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHJ1c3NpYW4lMjBnaXJsfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1594745561149-2211ca8c5d98?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODB8fHJ1c3NpYW4lMjBnaXJsfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1604072366595-e75dc92d6bdc?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTZ8fHJ1c3NpYW4lMjBnaXJsfGVufDB8fDB8fHww",
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: List.generate(
        50,
        (index) {
          int imageIndex = index % images.length;
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 250,
                    width: width,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            images[imageIndex],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: SizedBox.square(
                      dimension: 20,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            4,
                          ),
                          color: AppColors.trolleyColor.withOpacity(0.7),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.play_arrow_rounded,
                            size: 20,
                            color: AppColors.trolleyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                "Image motion video",
                style: AppTextStyles.subheaderS(),
              ),
              const SizedBox(height: 4),
              Text(
                "Image list",
                style: AppTextStyles.bodyTextS(
                  color: AppColors.trolleyColor,
                ),
              ),
              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}
