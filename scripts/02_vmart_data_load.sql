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
