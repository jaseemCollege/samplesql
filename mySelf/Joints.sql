use KeysConstrains;

select * from project inner join team on team.TeamId = project.proId;


select projectName,TeamName from project left join team on team.TeamId = project.proId;


select * from project right join team on team.TeamId = project.proId;