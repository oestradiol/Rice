#!/usr/bin/env sh

SINK_NAME=firefox
export LC_ALL=C
DEFAULT_OUTPUT=$(pactl info|sed -n -e 's/^.*Default Sink: //p')
pactl load-module module-null-sink sink_name=$SINK_NAME
pactl load-module module-loopback source=$SINK_NAME.monitor sink=$DEFAULT_OUTPUT
if pactl info|grep -w "PipeWire">/dev/null; then
    nohup pw-loopback --capture-props='node.target='$SINK_NAME --playback-props='media.class=Audio/Source node.name=virtmic node.description="virtmic"' >/dev/null &
else
    pactl load-module module-remap-source master=$SINK_NAME.monitor source_name=virtmic source_properties=device.description=virtmic
fi
