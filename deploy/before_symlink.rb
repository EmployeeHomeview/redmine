﻿%w(photo card).each do |folder|
    run "echo 'release_path: #{release_path}/public/#{folder}' >> #{shared_path}/logs.log"
    run "ln -nfs #{shared_path}/files/#{folder} #{release_path}/public/#{folder}"
end

run "echo 'release_path: #{release_path}/db/GeoIPCity.dat' >> #{shared_path}/logs.log"
run "ln -nfs #{shared_path}/shared/GeoIPCity.dat #{release_path}/db/GeoIPCity.dat"
