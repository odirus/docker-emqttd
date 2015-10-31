#!/bin/bash

cd /opt/emqttd && ./bin/emqttd start && tail -f log/emqttd_crash.log -f log/emqttd_error.log -f log/emqttd_sasl.log -f log/run_erl.log
