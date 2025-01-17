# Use this file to easily define all of your cron jobs.
# Learn more: http://github.com/javan/whenever

# Harvest thumbnail images for search results
every :day, at: '12:05am', roles: [:app] do
  rake 'gblsci:images:harvest_retry'
end
every :day, at: '12:30am', roles: [:app] do
  rake 'sitemap:refresh'
end
# Cleans up anonymous user accounts created by search sessions
every :day, at: '1:30am', roles: [:app] do
  rake 'devise_guests:delete_old_guest_users[2]'
end
# Cleans up recent anonymous search records
every :day, at: '2:30am', roles: [:app] do
  rake 'blacklight:delete_old_searches[7]'
end
# Exports SOLR data to public/data.json
every :day, at: '3:30am', roles: [:app] do
  rake 'geoportal:export_data'
end
# Clean Carrierwave tmp file directory
every :day, at: '4:30 am', roles: [:app] do
  runner "CarrierWave.clean_cached_files!"
end
# Check image harvest state and email results
every '0 3 * * 1', roles: [:app] do
  rake 'geoportal:sidecar_states'
end
# URI analysis
every '0 1 1 * *', roles: [:app] do
  rake 'geoportal:uri_purge'
end
every '0 2 1 * *', roles: [:app] do
  rake 'geoportal:uri_process_all'
end
every '0 1 2 * *', roles: [:app] do
  rake 'geoportal:uri_queue_incomplete_states'
end
every '0 8 2 * *', roles: [:app] do
  rake 'geoportal:uri_report'
end
