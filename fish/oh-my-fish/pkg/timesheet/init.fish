set TIMESHEET ~/Dropbox/nike/timesheet

function t
  ~/apps/timetracker/timetracker.rb $TIMESHEET
end

function timesheet --wraps vi
  vi +/`date +%Y-%m-%d` $TIMESHEET
end
