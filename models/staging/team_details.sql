with teams as (
    select * from {{ref('teams')}}
),
team_locations as (
    select * from {{ref('team_locations')}}
),
final as(
    select teams.team,team_locations.city,team_locations.state
    , teams.team='{{var("current_champions")}}'as is_champion
    from teams left join team_locations on team_locations.naem=teams.team
)

select * from final