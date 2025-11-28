select * from payments

1)
CREATE OR REPLACE FUNCTION amount_status(amount FLOAT)
RETURNS VARCHAR AS $$
DECLARE 
    a_status TEXT;
BEGIN
    IF amount <= 100 THEN
        a_status := 'low';
    ELSIF amount <= 200 THEN
        a_status := 'medium';
    ELSE
        a_status := 'high';
    END IF;

    RETURN a_status;
END;
$$ LANGUAGE plpgsql;

select amount_status (150)

select amount_status (50)

select amount_status (350)


2)
CREATE OR REPLACE FUNCTION method_type(method VARCHAR)
RETURNS VARCHAR AS $$
DECLARE 
    m_type TEXT;
BEGIN
    IF method = 'Card' THEN
        m_type := 'Digital';
    ELSIF method = 'Online' THEN
        m_type := 'Digital';
    ELSIF method = 'Insurance' THEN
        m_type := 'Third Party';
    ELSE
        m_type := 'Cash Based';
    END IF;

    RETURN m_type;
END;
$$ LANGUAGE plpgsql;

select method_type('Card')

select method_type('Insurance')

select method_type('Online')

select method_type('Money')












