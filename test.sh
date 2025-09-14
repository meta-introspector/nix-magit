#!/usr/bin/env bash

nix develop --command bash -c "emacs --batch -Q --load emacs-epc/epc.el --load test-magit-status.el"