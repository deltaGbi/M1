#!/bin/sh
# Copyright (C) 2015, Wazuh Inc.
# Created by Wazuh, Inc. <info@wazuh.com>.
# This program is a free software; you can redistribute it and/or modify it under the terms of GPLv2

WPYTHON_BIN="framework/python/bin/python3"
WAZUH_PATH="/var/lib/wazuh-server"

SCRIPT_PATH_NAME="$0"
SCRIPT_NAME="$(basename ${SCRIPT_PATH_NAME})"

PYTHON_SCRIPT="${WAZUH_PATH}/apis/scripts/$(echo ${SCRIPT_NAME} | sed 's/\-/_/g').py"

${WAZUH_PATH}/${WPYTHON_BIN} ${PYTHON_SCRIPT} $@