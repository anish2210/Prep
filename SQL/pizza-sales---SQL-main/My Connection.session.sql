SELECT *
FROM pizzahut.pizzas;
SELECT *
FROM pizzahut.order_details;
CREATE TABLE orders (
    order_id int not null,
    order_date date not null,
    order_time time not null,
    primary key (order_id)
);
CREATE TABLE order_details (
    order_details_id int not null,
    order_id int not null,
    pizza_id date not null,
    quantity time not null,
    primary key (order_details_id)
);
SELECT *
FROM pizzahut.orders;
SELECT *
FROM pizzahut.order_details;


--Retrieve the total no. of orders placed.
SELECT count(order_id) as total_orders
FROM orders;


--Calculate the total revenue generated by the company.
SELECT order_details.quantity * pizzas.price as revenue
FROM order_details
    JOIN pizzas ON pizzas.pizza_id = order_details.pizza_id;

    