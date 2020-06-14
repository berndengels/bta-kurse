select
    `participants`.*,
    `course_dates`.`start`,
    `courses`.`name`
from `participants`
inner join `participations` on `participations`.`participant_id` = `participants`.`id`
inner join `course_dates` on `course_dates`.`id` = `participations`.`course_date_id`
inner join `courses` on `courses`.`id` = `course_dates`.`course_id`
-- group by `participants`.`id`
order by `course_dates`.`start` asc
