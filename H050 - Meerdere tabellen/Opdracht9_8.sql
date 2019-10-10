SELECT studentnr, roepnaam, tussenvoegsels, achternaam, opleiding.naam FROM student
LEFT JOIN studentopleiding USING(studentnr)
LEFT JOIN opleiding USING (opleidingscode)
WHERE opleiding.naam = 'ApplicatieOntwikkeling';