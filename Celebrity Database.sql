#For this project, I created a database that includes a variety of celebrities and their traits. Then, I analyzed it using SQL.

CREATE TABLE celebrities (id INTEGER PRIMARY KEY, name TEXT, age INTEGER, zodiac_sign TEXT);

  INSERT INTO celebrities (name, age, zodiac_sign) VALUES ("Blake Lively", 36, "Virgo");
  INSERT INTO celebrities (name, age, zodiac_sign) VALUES ("Taylor Swift", 33, "Sagittarius");
  INSERT INTO celebrities (name, age, zodiac_sign) VALUES ("Miley Cyrus", 30, "Sagittarius");
  INSERT INTO celebrities (name, age, zodiac_sign) VALUES ("Zendaya", 27, "Virgo");
  INSERT INTO celebrities (name, age, zodiac_sign) VALUES ("Donald Trump", 77, "Gemini");

CREATE TABLE talent (id INTEGER PRIMARY KEY, celebrities_id INTEGER, name TEXT);

  INSERT INTO talent (celebrities_id, name) VALUES (1, "Acting");
  INSERT INTO talent (celebrities_id, name) VALUES (2, "Singing");
  INSERT INTO talent (celebrities_id, name) VALUES (3, "Singing");
  INSERT INTO talent (celebrities_id, name) VALUES (4, "Acting/Singing");
  INSERT INTO talent (celebrities_id, name) VALUES (5, "NULL");

CREATE TABLE zodiac_matches (id INTEGER PRIMARY KEY, celebrity1_id INTEGER, celebrity2_id INTEGER);

  INSERT INTO zodiac_matches (celebrity1_id, celebrity2_id) 
    VALUES (2,3);
  INSERT INTO zodiac_matches (celebrity1_id, celebrity2_id) VALUES (1,4);

#Combined databases using joins to discover which talent each celebrity has.
SELECT celebrities.name, talent.name
FROM celebrities
JOIN talent
ON celebrities.id= talent.celebrities_id
ORDER BY talent.name;

#Combined databases using joins to discover which celebrities share the same zodiac sign.
SELECT a.name, b.name
FROM zodiac_matches
JOIN celebrities a
ON a.id = zodiac_matches.celebrity1_id
JOIN celebrities b
ON b.id = zodiac_matches.celebrity2_id;

#Which celebrities within the database have the ability to sing?
SELECT celebrities.name, talent.name
FROM celebrities
JOIN talent
ON celebrities.id=talent.celebrities_id
WHERE talent.name LIKE "%singing%";
