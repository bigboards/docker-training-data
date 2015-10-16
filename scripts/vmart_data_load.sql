-- -----------------------------------
-- online_sales    small dimensions
-- -----------------------------------
load data
    local
    infile '/opt/training-src-data/data/online_sales_call_center_dimension.csv'
    into table online_sales.call_center_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

load data
    local
    infile '/opt/training-src-data/data/online_sales_online_page_dimension.csv'
    into table online_sales.online_page_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

-- -----------------------------------
-- public          small dimensions
-- -----------------------------------
load data
    local
    infile '/opt/training-src-data/data/public_customer_dimension.csv'
    into table public.customer_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

load data
    local
    infile '/opt/training-src-data/data/public_date_dimension.csv'
    into table public.date_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

load data
    local
    infile '/opt/training-src-data/data/public_employee_dimension.csv'
    into table public.employee_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

load data
    local
    infile '/opt/training-src-data/data/public_employee_dimension.csv'
    into table public.employee_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

load data
    local
    infile '/opt/training-src-data/data/public_product_dimension.csv'
    into table public.product_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

load data
    local
    infile '/opt/training-src-data/data/public_promotion_dimension.csv'
    into table public.promotion_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

load data
    local
    infile '/opt/training-src-data/data/public_shipping_dimension.csv'
    into table public.shipping_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

load data
    local
    infile '/opt/training-src-data/data/public_vendor_dimension.csv'
    into table public.vendor_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

load data
    local
    infile '/opt/training-src-data/data/public_warehouse_dimension.csv'
    into table public.warehouse_dimension
    character set 'UTF8'
    columns terminated by ',' enclosed by '"'
    lines terminated by '\n'
;

-- -----------------------------------
-- store            small dimensions
-- -----------------------------------
load data
local
infile '/opt/training-src-data/data/store_store_dimension.csv'
into table store.store_dimension
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;









-- -----------------------------------
-- large facts
-- -----------------------------------
load data
local
infile '/opt/training-src-data/data/public_inventory_fact.csv'
into table public.inventory_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;

load data
local
infile '/opt/training-src-data/data/store_store_orders_fact.csv'
into table store.store_orders_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;

load data
local
infile '/opt/training-src-data/data/store_store_sales_fact.1.csv'
into table store.store_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/store_store_sales_fact.2.csv'
into table store.store_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/store_store_sales_fact.3.csv'
into table store.store_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/store_store_sales_fact.4.csv'
into table store.store_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/store_store_sales_fact.5.csv'
into table store.store_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/store_store_sales_fact.6.csv'
into table store.store_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/store_store_sales_fact.7.csv'
into table store.store_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/store_store_sales_fact.8.csv'
into table store.store_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;

load data
local
infile '/opt/training-src-data/data/online_sales_online_sales_fact.1.csv'
into table online_sales.online_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/online_sales_online_sales_fact.2.csv'
into table online_sales.online_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/online_sales_online_sales_fact.3.csv'
into table online_sales.online_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/online_sales_online_sales_fact.4.csv'
into table online_sales.online_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/online_sales_online_sales_fact.5.csv'
into table online_sales.online_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/online_sales_online_sales_fact.6.csv'
into table online_sales.online_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/online_sales_online_sales_fact.7.csv'
into table online_sales.online_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/online_sales_online_sales_fact.8.csv'
into table online_sales.online_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
