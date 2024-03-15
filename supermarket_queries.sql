select * from invoice;

select * from invoice_details;

select * from branch;

select * from products;

select * from customer;

-- average spent per buy

SELECT AVG(total) AS average_spent
FROM invoice;

SELECT ROUND(AVG(total),2) AS average_spent
FROM invoice;

-- where they spent the most

select branch_name, ROUND(SUM(total), 2) as TotalPerBranch from invoice
group by branch_name
ORDER BY branch_name;

-- where they spent the most, with the city

select invoice.branch_name, branch.city, ROUND(SUM(total), 2) as TotalPerBranch 
from invoice
join branch on branch.branch_name = invoice.branch_name
group by invoice.branch_name, branch.city ;


-- who spent the most (first compare male and female and the second retrieves only the gender that spend the most)

select customer.gender, ROUND(SUM(total), 2) as TotalPerGender 
from invoice
join customer on invoice.customer_id = customer.customer_id
group by customer.gender ;

SELECT gender, TotalPerGender
FROM (
  SELECT customer.gender, ROUND(SUM(total), 2) as TotalPerGender 
  FROM invoice
  JOIN customer ON invoice.customer_id = customer.customer_id
  GROUP BY customer.gender
) as GenderTotals
ORDER BY TotalPerGender DESC
LIMIT 1;

-- and in what

select product_line, ROUND(SUM(total), 2) as TotalPerProduct  from invoice
join customer on invoice.customer_id = customer.customer_id
where customer.gender LIKE "Female"
group by product_line;

-- which city have the highest rating average

select AVG(rating), invoice.branch_name, branch.city from invoice_details
join invoice on invoice_details.invoice_id = invoice.invoice_id
join branch on invoice.branch_name = branch.branch_name
group by invoice.branch_name, branch.city 
order by branch_name;

-- how many sells have this city (Yangon)

select count(invoice.branch_name), city
from invoice, (select branch_name, city from branch where city like 'Yangon') subSearch
where invoice.branch_name = subSearch.branch_name
group by invoice.branch_name, city;




