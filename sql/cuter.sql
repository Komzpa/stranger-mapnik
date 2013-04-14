
CREATE OR REPLACE FUNCTION cuter(street varchar) RETURNS varchar AS
$BODY$
DECLARE
    cut_status VARCHAR;
    BEGIN
    
            IF street SIMILAR TO '%улица%' THEN RETURN  replace(street, 'улица', 'ул.');
            ELSIF street SIMILAR TO '%проспект%' THEN RETURN  replace(street, 'проспект', 'пр.');
            ELSIF street SIMILAR TO '%переулок%' THEN RETURN  replace(street, 'переулок', 'пер.');
            ELSIF street SIMILAR TO '%проезд%' THEN RETURN  replace(street, 'проезд', 'пр-д');
            ELSIF street SIMILAR TO '%бульвар%' THEN RETURN  replace(street, 'бульвар', 'бул.');
            ELSIF street SIMILAR TO '%тупик%' THEN RETURN  replace(street, 'тупик', 'т.');
            ELSIF street SIMILAR TO '%площадь%' THEN RETURN  replace(street, 'площадь', 'пл.');
            ELSIF street SIMILAR TO '%микрорайон%' THEN RETURN  replace(street, 'микрорайон', 'мкр.');
            ELSIF street SIMILAR TO '%квартал%' THEN RETURN  replace(street, 'квартал', 'кв.');
            ELSIF street SIMILAR TO '%набережная%' THEN RETURN  replace(street, 'набережная', 'наб.');
            END IF;
            RETURN street;
    END;
$BODY$
LANGUAGE plpgsql;
