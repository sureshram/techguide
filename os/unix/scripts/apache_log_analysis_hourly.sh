# http://www.inmotionhosting.com/support/website/server-usage/view-level-of-traffic-with-apache-access-log
#!/bin/csh -f
echo The $0 command is called $#argv
echo log file: $1

grep "2014:09" $1 | wc -l
# Get Minute count of form submission
#grep "2014:09" access_2014-01-14-13_36_50.log | grep "Form" | cut -d[ -f2 | cut -d] -f1 | awk -F: '{print $2":"$3}' | sort -nk1 -nk2 | uniq -c | awk '{ if ($1 >= 10) print $0}'
# Get Minute count of form open
#grep "2014:09" access_2014-01-14-13_36_50.log | grep "GET /ms/a/b" | cut -d[ -f2 | cut -d] -f1 | awk -F: '{print $2":"$3}' | sort -nk1 -nk2 | uniq -c | awk '{ if ($1 >= 10) print $0}'
# Get Minute count of report open
#grep "2014:09" access_2014-01-14-13_36_50.log | grep "GET /ms/a/c" | cut -d[ -f2 | cut -d] -f1 | awk -F: '{print $2":"$3}' | sort -nk1 -nk2 | uniq -c | awk '{ if ($1 >= 1) print $0}'