require 'pry'
require 'byebug'


db.execute(<<-SQL, organizer_id: org_id)

select *

from happenings

right join organizers on happenings.id = organizers.happening_id

where organizers.id = :organizer_id

SQL
