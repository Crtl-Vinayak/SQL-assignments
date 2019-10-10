SELECT studentnr, roepnaam, tussenvoegsels, achternaam, opleiding.naam FROM student
LEFT JOIN studentopleiding USING(studentnr)
LEFT JOIN opleiding USING (opleidingscode)
WHERE studentnr = '4444' AND roepnaam = 'Berend' AND tussenvoegsels = 'van der' AND achternaam = 'Tol';