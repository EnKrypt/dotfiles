#!/bin/bash

id=`python2 ~/scripts/i3-cycle-windows/id-list.py`
i3-msg [id="$id"] focus > /dev/null
