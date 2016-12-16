#!/usr/bin/python
from Foundation import CFPreferencesCopyAppValue

pref_value = CFPreferencesCopyAppValue('ReportItems', 'MunkiReport')
print pref_value
