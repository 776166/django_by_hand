
try:
    from .settings_local import *
except Exception as e:
    print('No settings_local')
    print("settings_local EXCEPTION:", e)