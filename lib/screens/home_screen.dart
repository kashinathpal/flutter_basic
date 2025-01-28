import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/accessibility_widgets/excludeSemantics_widgets_screen.dart';
import 'package:flutter_basic/accessibility_widgets/mergeSemantics_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/align_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/center_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/column_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/container_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/expanded_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/filterBox_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/icon_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/image_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/padding_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/row_widgets_screens.dart';
import 'package:flutter_basic/basicWidgets/sizedBox_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/stack_widgets_screen.dart';
import 'package:flutter_basic/basicWidgets/text_widgets_screen.dart';
import 'package:flutter_basic/buttons_and_interactions/elevated_button_widgets_screen.dart';
import 'package:flutter_basic/buttons_and_interactions/floatingActionButton_widgets_screen.dart';
import 'package:flutter_basic/buttons_and_interactions/gestureDetector_widgets_screen.dart';
import 'package:flutter_basic/buttons_and_interactions/icon_button_widgets_screen.dart';
import 'package:flutter_basic/buttons_and_interactions/inkwell_widgets_screen.dart';
import 'package:flutter_basic/buttons_and_interactions/outlined_button_widgets_screen.dart';
import 'package:flutter_basic/buttons_and_interactions/text_button_widgets_screen.dart';
import 'package:flutter_basic/screens/widgets_screen/container_screen.dart';
import 'package:flutter_basic/screens/widgets_screen/image_screen.dart';
import 'package:flutter_basic/screens/widgets_screen/text_screen.dart';

import '../basicWidgets/divider_widgets_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Flutter Basic Widgets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 12),
            const Text(
              'Flutter offers an extensive set of widgets to build robust, scalable, and visually appealing applications. Here’s a categorized list of all major Flutter widgets, covering basic to advanced ones.',
              style: TextStyle(fontSize: 13, color: Colors.black87),
            ),
            const SizedBox(height: 12),
            const Text(
              '1. Basic Widgets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextWidgetsScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Text: ', 'Display simple text.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContainerWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText(
                        'Container: ', 'A flexible box model widget.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ImageWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText(
                        'Image: ',
                        'Show images from assets, network, or memory.',
                        context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IconWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText(
                        'Icon: ', 'Display a material design icon.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RowWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText(
                        'Row: ', 'Horizontal layout.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ColumnWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText(
                        'Column: ', 'Vertical layout.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StackWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText(
                        'Stack: ', 'Overlapping layout.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaddingWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText(
                        'Padding: ', 'Adds padding around widgets.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CenterWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText(
                        'Center: ', 'Centers child widget.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExpandedWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText('Expanded: ',
                        'Fills available space in a flex widget.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SizedBoxWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText('SizedBox: ',
                        'Define a fixed width and height.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AlignWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText(
                        'Align: ', 'Align child within its parent.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FittedBoxWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText('FittedBox: ',
                        'Scale and fit child widget inside bounds.', context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DividerWidgetsScreen()),
                      );
                    },
                    child: _buildBulletText('Divider: ',
                        'Horizontal or vertical separator line.', context),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '2. Buttons and Interactions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ElevatedButtonWidgetsScreen()),
                        );
                      },
                      child: _buildBulletText('ElevatedButton: ',
                          'Material button with elevation.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextButtonWidgetsScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'TextButton: ', 'Flat button with text.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OutlinedButtonWidgetsScreen()),
                        );
                      },
                      child: _buildBulletText('OutlinedButton: ',
                          'Button with outlined border.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IconButtonWidgetsScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'IconButton: ', 'Button with an icon.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FloatingActionButtonWidgetsScreen()),
                        );
                      },
                      child: _buildBulletText('FloatingActionButton: ',
                          'Circular action button.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GestureDetectorWidgetsScreen()),
                        );
                      },
                      child: _buildBulletText('GestureDetector: ',
                          'Detects gestures like tap, drag, etc.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InkwellWidgetsScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'InkWell: ', 'Adds ripple effect on tap.', context)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '3. Input Widgets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'TextField: ', 'Input text from the user.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('Checkbox: ',
                          'Checkbox to toggle a value.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('Switch: ',
                          'Toggle button for on/off state.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Slider: ',
                          'Slider for selecting a value within a range.',
                          context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Radio: ', 'Single-choice button.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'DropdownButton: ', 'Dropdown menu.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Form: ', 'Group multiple input fields.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('Autocomplete: ',
                          'Suggests options while typing.', context)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '4. Layout Widgets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Scaffold: ', 'Base structure for app screens.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('AppBar: ',
                          'Material design top bar.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('Drawer: ',
                          'Slide-in navigation menu.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'BottomNavigationBar: ',
                          'Navigation bar at the bottom.within a range.',
                          context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'TabBar: ', 'Creates tabs in an app.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'TabBarView: ', 'Displays content for tabs.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'ListView: ', 'Scrollable list.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('GridView: ',
                          'Scrollable grid layout.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('CustomScrollView: ',
                          'Scroll view with slivers.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('Flexible: ',
                          'Flexible space in a flex container.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('Wrap: ',
                          'Wraps widgets based on available space.', context)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '5. Animation Widgets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'AnimatedContainer: ', 'Animate changes in size, color, etc.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('AnimatedOpacity: ',
                          'Fade-in/fade-out effect.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('AnimatedBuilder: ',
                          'Rebuild widgets based on animation.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'BottomNavigationBar: ',
                          'Navigation bar at the bottom.within a range.',
                          context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'FadeTransition: ', 'Fades a child widget in/out.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'SlideTransition: ', 'Moves child widget in/out of view.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'RotationTransition: ', 'Rotates a child widget.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('ScaleTransition: ',
                          'Scales a child widget.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('Hero: ',
                          'Shared element transition between screens.', context)),

                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '6. Advanced Widgets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'StreamBuilder: ', 'Build UI from a stream of data.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('FutureBuilder: ',
                          'Build UI based on future data.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('InheritedWidget: ',
                          'Share data between widgets in the tree.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Provider: ',
                          'Popular state management widget.',
                          context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'CustomPaint: ', 'Custom graphics using canvas.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'ReorderableListView: ', 'Reorder items in a list.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'SliverAppBar: ', 'Flexible app bar with scroll effects.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('SliverList: ',
                          'Creates a scrollable list in a sliver.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('SliverGrid: ',
                          'Creates a scrollable grid in a sliver.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('PageView: ',
                          'Swipe through pages horizontally or vertically.', context)),

                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('NotificationListener: ',
                          'Listen for notifications in the widget tree.in a sliver.', context)),

                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('Draggable: ',
                          'Drag and drop widgets.', context)),

                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('DraggableScrollableSheet: ',
                          'Draggable sheet with scrollable content.', context)),

                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '7. Dialogs and Modals',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'AlertDialog: ', 'Displays alert dialogs.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('SimpleDialog: ',
                          'Displays simple dialogs.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('BottomSheet: ',
                          'Sliding panel at the bottom.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'SnackBar: ',
                          'Temporary message display.range.',
                          context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Tooltip: ', 'Brief information about a widget.', context)),

                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '8. Media and Effects',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'VideoPlayer: ', 'Plays video files.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('AudioPlayer: ',
                          'Plays audio files (via plugins).', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('Opacity: ',
                          'Adjust transparency of a widget.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Transform: ',
                          'Rotate, scale, skew, or translate widgets.',
                          context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'ShaderMask: ', 'Apply shader effects.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'BackdropFilter: ', 'Apply blur effects.', context)),

                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '9. Custom Widgets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Builder: ', 'Builds child widgets dynamically.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('CustomScrollView: ',
                          'Combines various sliver widgets.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('LayoutBuilder: ',
                          'Builds child based on parent constraints.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'MediaQuery: ',
                          'Access screen size and orientation.',
                          context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'WillPopScope: ', 'Intercept back button presses.', context)),

                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '10. Navigation Widgets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Navigator: ', 'Manage route stacks for navigation.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('PageRouteBuilder: ',
                          'Custom transitions between routes.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText('CupertinoPageRoute: ',
                          'iOS-style page transitions.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Drawer: ',
                          'Provides a navigation drawer.',
                          context)),

                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '11. Accessibility Widgets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextScreen()),
                        );
                      },
                      child: _buildBulletText(
                          'Semantics: ', 'Add semantics for screen readers.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  MergeSemanticsExample()),
                        );
                      },
                      child: _buildBulletText('MergeSemantics: ',
                          'Merges semantics properties.', context)),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  ExcludeSemanticsExample()),
                        );
                      },
                      child: _buildBulletText('ExcludeSemantics: ',
                          'Exclude semantics from a subtree.', context)),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletText(
      String boldText, String regularText, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 13, color: Colors.black87),
              children: [
                // Wrap the bold text in a TextSpan
                TextSpan(
                  text: boldText,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: regularText,
                  style: const TextStyle(
                      fontSize: 13, color: Colors.black87, height: 1.4),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
