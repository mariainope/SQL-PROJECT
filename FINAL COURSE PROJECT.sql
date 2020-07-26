# LIST OF MANAGERS
SELECT
s.staff_id AS ID,
CONCAT(s.first_name, ' ',s.last_name) AS Manager_Name,
a.address AS address,
a.postal_code,
a.phone,
c.city,
t.country,
s.store_id
FROM
staff s
JOIN
address a ON s.address_id = a.address_id
JOIN
city c ON a.city_id = c.city_id
JOIN
country t ON c.country_id = t.country_id;
    
    #LIST OF INVENTORY ITEMS
   SELECT 
    i.inventory_id, i.store_id, f.*
FROM
    inventory i
        LEFT JOIN
    film f ON i.film_id = f.film_id
ORDER BY i.inventory_id;
    
    
    #INVENTORY ITEMS WITH EACH RATING
   SELECT 
    i.store_id, f.rating, COUNT(i.inventory_id) AS sum_inventory
FROM
    film f
        JOIN
    inventory i ON f.film_id = i.film_id
GROUP BY f.rating , i.store_id;
    
    
    # NUMBER OF FILMS, AVERAGE REPLACEMENT COST, TOTAL REPLACEMENT COST SLICED BY STORE AND FILM CATEGORY
    
    SELECT 
    i.store_id,
    COUNT(f.film_id) AS Count_film_id,
    ROUND(AVG(f.replacement_cost), 2) AS Average_replacement_cost,
    ROUND(SUM(f.replacement_cost), 2) AS Total_replacement_cost
FROM
    film f
        JOIN
    inventory i ON f.film_id = i.film_id
GROUP BY i.store_id;
    
    
    #LIST OF CUSTOMERS
   SELECT 
    s.first_name,
    s.last_name,
    s.store_id,
    s.active,
    a.address,
    c.city,
    t.country
FROM
    customer s
        JOIN
    address a ON s.address_id = a.address_id
        JOIN
    city c ON a.city_id = c.city_id
        JOIN
    country t ON c.country_id = t.country_id
;
    
    
    
    # LIST OF INVESTORS AND ADVISORS
    
    SELECT
    a.advisor_id,
    CONCAT(a.first_name, ' ', a.last_name) AS Advisors_name,
    i.investor_id,
    CONCAT(i.first_name, ' ', i.last_name) AS Investors_name
    i.company_name AS Investors_company_name,
    FROM
    advisor a , investor i
    ORDER BY a.advisor_id, i.investor_id;
    
    

    
    
    
    