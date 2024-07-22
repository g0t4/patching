#!/usr/bin/env fish

begin; diff -e catalog.html change-name/catalog.html; echo -e "w\nq\n"; end | ed catalog.html
