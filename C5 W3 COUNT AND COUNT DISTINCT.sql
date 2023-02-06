--JOINing both tables together and creating alias' for them
SELECT orders. *,
warehouse.warehouse_alias,
warehouse. state


FROM [Google DA Lessons].[dbo].['Warehouse-Orders---Orders$'] AS orders

INNER JOIN [Google DA Lessons].[dbo].['Warehouse- Orders---Warehouse$'] warehouse 

ON orders.warehouse_id = warehouse.warehouse_id



-- COUNT vs COUNT DISTINCT 

---With DISTINCT it only shows 3 distinct states in our order statement
SELECT 

COUNT(DISTINCT warehouse.state) AS num_states



FROM [Google DA Lessons].[dbo].['Warehouse-Orders---Orders$'] AS orders

INNER JOIN [Google DA Lessons].[dbo].['Warehouse- Orders---Warehouse$'] warehouse 

ON orders.warehouse_id = warehouse.warehouse_id


-- With only COUNT and not COUNT DISTINCT, it returns 9999 stores...
SELECT 

COUNT( warehouse.state) AS num_statesorders 



FROM [Google DA Lessons].[dbo].['Warehouse-Orders---Orders$'] AS orders

INNER JOIN [Google DA Lessons].[dbo].['Warehouse- Orders---Warehouse$'] warehouse 

ON orders.warehouse_id = warehouse.warehouse_id


-- USING COUNT DISTINCT TO PULL THE NUMBER OF ORDERS
SELECT warehouse.state as state,

COUNT(DISTINCT order_id) AS num_orders


FROM [Google DA Lessons].[dbo].['Warehouse-Orders---Orders$'] orders

INNER JOIN [Google DA Lessons].[dbo].['Warehouse- Orders---Warehouse$'] warehouse 

ON orders.warehouse_id = warehouse.warehouse_id

GROUP BY warehouse.state 
