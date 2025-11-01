#!/bin/bash
# Enforce MFA + IP allowlist
USER=$1
if [[ "$USER" && "$MFA_VERIFIED" == "true" && "$IP" =~ ^192\.168\.* ]]; then
  echo "Access GRANTED: Zero-Trust Compliant"
else
  echo "Access DENIED"
fi
