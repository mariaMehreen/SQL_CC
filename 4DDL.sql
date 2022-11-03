
use doctor;
SELECT fees,
case
	when(specialization='ent' AND doctor_name regexp doctor_name = '^[j]') then fees=350
	when (specialization='derma' AND doctor_name regexp doctor_name='^[j]') then fees=600
end
from t_doctor;