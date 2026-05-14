import 'dart:io';
import 'dart:convert';

void main() async {
  final directory = Directory('lib');
  final assetsDir = Directory('assets/images');
  if (!await assetsDir.exists()) {
    await assetsDir.create(recursive: true);
  }

  final files = directory.listSync(recursive: true).whereType<File>().toList();
  
  final regex = RegExp(r'''['"](https://lh3.googleusercontent.com/[^'"]+)['"]''');
  
  int counter = 1;
  Map<String, String> urlToLocal = {};

  for (final file in files) {
    if (!file.path.endsWith('.dart')) continue;
    String content = await file.readAsString();
    final matches = regex.allMatches(content);
    
    for (final match in matches) {
      final url = match.group(1)!;
      if (!urlToLocal.containsKey(url)) {
        final ext = '.jpg'; // Assign jpg as default for these
        final filename = 'image_$counter$ext';
        final localPath = 'assets/images/$filename';
        
        print('Downloading \$url to \$localPath');
        try {
          final request = await HttpClient().getUrl(Uri.parse(url));
          final response = await request.close();
          final fileOut = File(localPath);
          await response.pipe(fileOut.openWrite());
          urlToLocal[url] = localPath;
          counter++;
        } catch (e) {
          print('Failed to download \$url: \$e');
        }
      }
    }
  }

  // Now replace URLs in files
  for (final file in files) {
    if (!file.path.endsWith('.dart')) continue;
    String content = await file.readAsString();
    bool changed = false;

    for (final url in urlToLocal.keys) {
      final localPath = urlToLocal[url]!;
      if (content.contains(url)) {
        content = content.replaceAll(url, localPath);
        changed = true;
      }
    }

    if (changed) {
      // Replace Image.network with Image.asset
      content = content.replaceAll('Image.network(', 'Image.asset(');
      // Replace NetworkImage with AssetImage
      content = content.replaceAll('NetworkImage(', 'AssetImage(');
      
      // Handle CachedNetworkImage
      content = content.replaceAll('CachedNetworkImage(', 'Image.asset(');
      content = content.replaceAll('imageUrl:', '/*imageUrl*/');
      content = content.replaceAll(RegExp(r'/\*imageUrl\*/\s*[''"]assets/images/'), '"assets/images/');
      // Above logic is flaky, let's just replace CachedNetworkImage(imageUrl: '...') to Image.asset('...')
      
      // Let's do a more robust regex for CachedNetworkImage
      content = content.replaceAllMapped(
        RegExp(r'CachedNetworkImage\(\s*imageUrl:\s*[''"]([^''"]+)[''"]'),
        (match) => 'Image.asset(\'${match.group(1)}\''
      );
      
      // And CachedNetworkImageProvider
      content = content.replaceAll('CachedNetworkImageProvider(', 'AssetImage(');
      
      // Remove cached_network_image imports
      content = content.replaceAll("import 'package:cached_network_image/cached_network_image.dart';", "");

      await file.writeAsString(content);
      print('Updated \${file.path}');
    }
  }
}
