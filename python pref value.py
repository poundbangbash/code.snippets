#!/usr/bin/python
from Foundation import CFPreferencesCopyAppValue

pref_value = CFPreferencesCopyAppValue('OverrideAccountConfigurationWindow', 'com.microsoft.Outlook')
print pref_value
