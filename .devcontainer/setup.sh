#!/bin/bash

echo "${SSH_PUBLIC_KEY}" > ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
