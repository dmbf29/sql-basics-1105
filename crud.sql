-- CRUD SQL
-- Read all of my doctors:
-- SELECT * FROM doctors;

-- Read one doctor
-- SELECT * FROM doctors
-- WHERE id = 1;
-- WHERE name = 'Miriam';

-- All surgeons
-- SELECT * FROM doctors
-- WHERE specialty LIKE '%surgery%';

-- Create
-- INSERT INTO doctors (name, age, specialty)
-- VALUES ('Grant', 28, 'Pediactrics');
-- VALUES ('Emily); DROP TABLE doctors; -- ', 'Pediactrics');


-- Update
-- UPDATE doctors SET id = 9
-- WHERE id = 11;

-- Delete
-- DELETE FROM doctors WHERE id = 13;

-- DELETE FROM doctors
-- DROP TABLE doctors

-- Good
-- DELETE FROM doctors
-- WHERE specialty = "Dentist"
-- OR specialty = "Cardiologist"

-- Bad
-- DELETE FROM doctors
-- WHERE specialty = "Dentist"
-- OR "Cardiologist"



SELECT * FROM doctors;

-- Doctor.all
-- Doctor.find(10)
-- josh.save -- insert into / update
-- josh.destroy

-- @homes.each do |home|
--   # build an html card for each home
-- end



-- https://www.airbnb.com/s/Bali--Indonesia/homes
-- SELECT * FROM homes
-- WHERE location = 'Bali'

-- https://www.airbnb.com/homes/44399644
-- SELECT * FROM homes
-- WHERE id = 44399644

-- https://github.com/dmlaksjdlaksjdal
-- SELECT * FROM users
-- WHERE username = 'dmlaksjdlaksjdal'
