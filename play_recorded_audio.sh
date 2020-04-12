#!/bin/bash
gst-launch-1.0 filesrc location=./out_audio/out ! rawaudioparse ! audioconvert ! decodebin ! audioresample ! autoaudiosink
