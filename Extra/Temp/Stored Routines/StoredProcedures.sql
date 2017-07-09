delimiter $$
create procedure getStateOfCity(
	in cityName varchar(25), 
	out stateName varchar(25))
begin
	declare stateName varchar(25);
	set stateName = '';

	if cityName = 'Bangalore' then
		set stateName = 'Karnataka';
	elseif cityName = 'Bengaluru' then
		set stateName = 'Karnataka';
	end if;
end $$
delimiter ;

CALL getStateOfCity('Bangalore', @stateName);
select @stateName;


drop procedure getStateOfCity;

delimiter $$
create procedure getStateOfCity(
	in cityName varchar(25), 
	out stateName varchar(25))
begin

    select cityName;

	if strcmp(cityName, 'Bangalore') then
		select 'Karnataka' into stateName;
    select 'executing if';
	elseif strcmp(cityName,  'Bengaluru') then
		select 'Karnataka' into stateName;
        select 'executing else if';
    else 
    select 'Invalid' into stateName;
    select 'executing else';
	end if;
 end $$
delimiter ;


delimiter $$
create procedure getStateOfCity1(
	in cityName varchar(25), 
	out stateName varchar(25))
begin

    select cityName;

	if cityName like 'Bangalore' then
		select 'Karnataka' into stateName;
    select 'executing if';
	elseif cityName like 'Bengaluru' then
		select 'Karnataka' into stateName;
        select 'executing else if';
    else 
    select 'Invalid' into stateName;
    select 'executing else';
	end if;
 end $$
delimiter ;

CALL getStateOfCity1('Bangalore', @stateName);
select @stateName;

-- --------------------------------------------------
delimiter $$
create function 
	getStateNameOfACity(cityName varchar(25)) 
	returns varchar(25) deterministic
begin
	declare stateName varchar(25) default 'Invalid';

	if cityName = 'Bangalore' then
		set stateName = 'Karnataka';
	elseif cityName = 'Bengaluru' then
		set stateName = 'Karnataka';
	end if;
return (stateName);
end  $$
delimiter ;

select getStateNameOfACity('Bangaloe');


-- --------------------------------------------
delimiter $$
create procedure getStateNameOfCity(
	in cityName varchar(25), 
	out stateName varchar(25))
begin
	select getStateNameOfACity(cityName) into stateName;
end $$
delimiter ;

call getStateNameOfCity('Bangalore', @state);
select @state as 'State Name';


-- --------------------------------------------
delimiter $$
create procedure getStateName(inout stateName varchar(25))
begin
	select getStateNameOfACity(stateName) into stateName;
end $$
delimiter ;

set @temp = 'Bangalore';
call getStateName(@temp);
select @temp as 'State Name';

drop procedure getStateName;

-- --------------------------------------------
delimiter $$
create procedure getStateNameCase(inout temp varchar(25))
begin
select temp;
	CASE temp
        WHEN  'Bengaluru' THEN
            SET temp = 'Karnataka';
            select 'when 2';
        WHEN 'Bangalore' THEN
           SET temp = 'Karnataka';
           select 'when 2';
        ELSE
           SET temp = 'Invalid';
           select 'Invalid';
    END CASE;

end $$
delimiter ;

set @temp = 'Bangalor';
call getStateNameCase(@temp);
select @temp as 'State Name';

drop procedure getStateNameCase;