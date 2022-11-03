create database exam;
use exam;
create Table t_agent(
agent_id Varchar(25) primary key,
agent_name Varchar(100),
agent_email varchar(50),
agent_city varchar(100),
agent_phone Decimal(15,0),
target_policy_sum decimal(15,0)
);
create Table t_policy(
policy_id Varchar(25) primary key,
policy_name Varchar(100),
agent_id varchar(25),
policy_type varchar(100),
policy_sum decimal(20,0),
policy_status varchar(100),
policy_tenure decimal(5,0)
);
create Table t_member(
member_id Varchar(25) primary key,
member_name Varchar(100),
member_email Varchar(100),
member_city Varchar(100),
member_phone decimal(10,0),
agent_id varchar(100),
policy_id varchar(100)
);
alter table t_member
ADD FOREIGN KEY(agent_id) REFERENCES t_agent(agent_id),
ADD FOREIGN KEY(policy_id) REFERENCES t_policy(policy_id);