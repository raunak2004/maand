#!/bin/bash
rsync -rahzv --rsh="ssh -o StrictHostKeyChecking=no -o LogLevel=error -l $SSH_USER" /opt/agent/ "$AGENT_IP":/opt/agent/
rsync -rahzv --delete --exclude 'data' --exclude 'logs' --rsh="ssh -o StrictHostKeyChecking=no -o LogLevel=error -l $SSH_USER" /opt/agent/ "$AGENT_IP":/opt/agent/