::Change Display Timeout via Adb

::adb shell cd /data/data/com.android.providers.settings/databases/

::adb shell sqlite3 settings.db

:: Never
::update system SET value='-1' where name='screen_off_timeout';

:: 30M
::adb shell update system SET value='1800000' where name='screen_off_timeout';

:: 10M
::adb shell update system SET value='600000' where name='screen_off_timeout';

::Check 
::adb shell select * from system where name='screen_off_timeout';


:: unlock
::adb shell update system set value=0 where name='lock_pattern_autolock';


::adb shell .quit

::adb shell reboot

::pause