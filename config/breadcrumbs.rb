crumb :root do
  link "Home", root_path
end

crumb :routines do
  link "Routines", routines_path
end

crumb :routine do |routine|
  link routine.name, routine_path(routine)
  parent :routines
end

crumb :routine_histories do |routine|
  parent :routine, routine
end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end
