# Flutter Error Pages Demo

A demo of 5 different error pages with custom animations. Using both a built Container and the built in AlertDialogue widget.

## Structure

Currently the code has been broken up into the following structure:

<pre>
lib/
  errors/
    AlertWidgets/
      - built_in_alert.dart
      - built_in_alert_float.dart
      - custom_alert.dart
      - custom_alert_float.dart
    ChartDataErrorPage/
      - chart_data_error_animation.dart
    InternetErrorPage/
      - internet_error_animation.dart
    LoginErrorPage/
      - login_error_animation.dart
    ServerErrorPage/
      - server_error_animation.dart
    StyleErrorPage/
      - style_error_animation.dart
		- error_page_view.dart
  images/
    - background.jpg
  - main.dart
</pre>

## Code of Note

All of the code for the various types of alerts is kept in the 'AlertWidgets' directory.

Each of the animations are stored in their respective page directories. I'll upload gifs of each of the recordings later.
