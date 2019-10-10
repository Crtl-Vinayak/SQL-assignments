SELECT roepnaam, tussenvoegsels, achternaam, opleiding.naam FROM student
INNER JOIN studentopleiding ON studentopleiding.studentnr = student.studentnr
INNER JOIN opleiding ON opleiding.opleidingscode = studentopleiding.opleidingscode
WHERE achternaam = 'Tol' AND tussenvoegsels = 'van der' AND roepnaam = 'Berend';