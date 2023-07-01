#
# utils.py
#
# All utilities, debugging tools, and settings 
# for Boa are defined here.
#

import os
import sys

# Add Boa to path
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

# ==============================================
# Settings
# ==============================================

# Set up settings
class Settings:
    def __init__(self):
        self.DEBUG = False
        return

# Global settings object
settings = Settings()


# ==============================================
# Debugging
# ==============================================

def debug(*args, **kwargs):
    if settings.DEBUG: print(*args, **kwargs)
    return



