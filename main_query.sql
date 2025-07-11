/* selecting all the Customer of the Chinook database that are not Americans and Americans*/
/select count(CustomerId) as total_customers from Chinook.Customer
where Country = "USA"
union
select count(CustomerId) as total_customers from Chinook.Customer 
where not Country = "USA"
;
/*Swowing all customers by country */
select distinct Country, count(CustomerId) as total_customers from Customer
group by Country;
/* Invoice numbers by year since 2021 to 2025*/
select year(InvoiceDate) as Year, count(InvoiceId) as Invoice_number from Chinook.Invoice
where year(InvoiceDate) = 2025
group by Year
union
select year(InvoiceDate) as Year, count(InvoiceId) as Invoice_number from Chinook.Invoice
where year(InvoiceDate) = 2024
group by Year
union
select year(InvoiceDate) as Year, count(InvoiceId) as Invoice_number from Chinook.Invoice
where year(InvoiceDate) = 2023
group by Year
union
select year(InvoiceDate) as Year, count(InvoiceId) as Invoice_number from Chinook.Invoice
where year(InvoiceDate) = 2022
group by Year
union
select year(InvoiceDate) as Year, count(InvoiceId) as Invoice_number from Chinook.Invoice
where year(InvoiceDate) = 2021
group by Year
;
/*Number of Invoices per country*/
select distinct Country, count(I.CustomerId) as total_customer from Chinook.Invoice I join Chinook.Customer C on
I.CustomerId = C.CustomerId
group by Country;
