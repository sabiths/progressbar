Progress Bar for flutter apps



## Usage

Include the package into the application and call for the progressbar as in the example code
```dart
import 'package:progressbar/progressbar.dart';
ProgressBar(
  fillValue: 4700,
  totalValue: 5000,
  height: 20,
  showValue: true,
  showinPercentage: false,
  fillColor = const ["0xFFdb0303", "0xFFdbc003", "0xFF38db03"],
  fillPercentage = const [40, 70, 100]
 )
 
 ProgressBar(
  fillValue: 5000,
  totalValue: 5000,
  height: 20,
  showValue: true,
  showinPercentage: true,
  fillColor = const ["0xFFdb0303", "0xFFdbc003", "0xFF38db03"],
  fillPercentage = const [40, 70, 100]
 )
 
 ProgressBar(
  fillValue: 250,
  totalValue: 3000,
  height: 20,
  showValue: true,
  showinPercentage: false,
  fillColor = const ["0xFFdb0303", "0xFFdbc003", "0xFF38db03"],
  fillPercentage = const [40, 70, 100]
 )
 
  ProgressBar(
  fillValue: 45,
  totalValue: 100,
  height: 20,
  showValue: true,
  showinPercentage: true,
  fillColor = const ["0xFFdb0303", "0xFFdbc003", "0xFF38db03"],
  fillPercentage = const [40, 70, 100]
 )
```

![progressbar](https://user-images.githubusercontent.com/12253301/147404237-37b5e758-7d29-4656-b1a4-e958ba4748b0.png)
