use Hands_on;

DELIMITER $$
create procedure Availabledept()
begin
	select Dept_name as 'Name' from Department;
end$$

DELIMITER ;

call Availabledept();