#!/bin/bash

status=0

(./bin/try-publish.sh "app-provider") || status=1
(./bin/try-publish.sh "react-auth") || status=1
(./bin/try-publish.sh "crud") || status=1
(./bin/try-publish.sh "file-input") || status=1
(./bin/try-publish.sh "forms") || status=1
(./bin/try-publish.sh "permissions-provider") || status=1
(./bin/try-publish.sh "table-schema-provider") || status=1
(./bin/try-publish.sh "utils") || status=1

exit $status
