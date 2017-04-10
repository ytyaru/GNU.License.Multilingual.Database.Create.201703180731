#!/bin/bash
#HatenaId = $1
#BlogId = $2
sqlite=sqlite3
PATH_DB=./GNU.Licenses.sqlite3
# Create Table
${sqlite} "${PATH_DB}" < ./Colors.sql
${sqlite} "${PATH_DB}" < ./Licenses.sql
${sqlite} "${PATH_DB}" < ./Multilingual.sql
# Insert
${sqlite} "${PATH_DB}" < ./Colors.Insert.sql
# Check
${sqlite} "${PATH_DB}" < ./Check.sql

