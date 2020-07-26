#LIST OF ALL STAFF MEMEBERS

SELECT 
    *
FROM
    staff;
    
    # SEPERATE COUNT OF INVENTORY
    
    SELECT 
    store_id, COUNT(inventory_id) AS total_inventory
FROM
    inventory
GROUP BY store_id;

#COUNT OF ACTIVE CUSTOMERS

SELECT 
    store_id, COUNT(active) AS Active_customers
FROM
    customer
GROUP BY store_id;

#COUNT OF ALL CUSTOMERS EMAIL ADDRESS

SELECT 
    COUNT(email) AS total_email_address
FROM
    customer;
    
    #UNIQUE FILM TITLES AND UNIQUE CATEGORY OF FILMS
    
    SELECT 
    store_id, COUNT(film_id) AS unique_films
FROM
    inventory
GROUP BY store_id;
    
   SELECT 
    COUNT(category_id) AS unique_category
FROM
    film_category;
    
    #REPLACEMENT COST OF FILMS
    
    SELECT 
    MIN(replacement_cost) AS minimum_cost,
    MAX(replacement_cost) AS maximum_cost,
    AVG(replacement_cost) AS average_films
FROM
    film;
 
 #AVERAGE AND MAXIMUM PAYMENTS THAT HAVE BEEN PROCESSED
    
   SELECT 
    MAX(amount) AS maximum_payments,
    AVG(amount) AS average_payments
FROM
    payment;
    
    #LIST OF ALL CUSTOMERS ID VALUES,RENTALS MADE AND HIGHEST VOLUME CUSTOMERS
    
 
   SELECT 
    *
FROM
    inventory; 
