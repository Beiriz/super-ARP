#!/usr/bin/env bash
MAC=$(arp -a | grep : | awk '{print $4}') ; for LINHA in $MAC; do RESULTADO=$(curl -s "https://api.macvendors.com/${LINHA//\:/\-}"); echo "$LINHA => $RESULTADO"; sleep 2; done
