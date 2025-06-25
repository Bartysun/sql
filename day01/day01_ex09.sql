Select name
from pizzeria
Where id NOT IN (
			Select pizzeria_id
			from person_visits
			Where pizzeria_id=pizzeria.id);
			
Select name
from pizzeria
Where NOT EXISTS (
			Select 1
			from person_visits
			Where pizzeria_id=pizzeria.id);