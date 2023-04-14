create table orderDetail
(
    id         int PRIMARY KEY generated by default as identity,
    order_id   int references "Order" (id) on DELETE cascade not null,
    product_id int references product (id) on delete cascade not null,
    price      int check ( price > 0 )                       not null,
    quantity   int check ( quantity > 0 )                    not null
);

insert into orderdetail(order_id, product_id, price, quantity)
VALUES (1, 2, 30, 5);

insert into orderdetail(order_id, product_id, price, quantity)
VALUES (1, 4, 100, 1);

insert into orderdetail(order_id, product_id, price, quantity)
VALUES (2, 3, 10000, 1);

insert into orderdetail(order_id, product_id, price, quantity)
VALUES (3, 1, 50, 3);

insert into orderdetail(order_id, product_id, price, quantity)
VALUES (4, 4, 100, 2);

insert into orderdetail(order_id, product_id, price, quantity)
VALUES (5, 2, 30, 10);

insert into orderdetail(order_id, product_id, price, quantity)
VALUES (6, 3, 10000, 2);

insert into orderdetail(order_id, product_id, price, quantity)
VALUES (6, 1, 50, 6);
