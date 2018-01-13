#!/usr/bin/python
from Foundation import CFPreferencesCopyAppValue

pref_value = CFPreferencesCopyAppValue('CatalogURL', 'com.apple.SoftwareUpdate')
print pref_value
