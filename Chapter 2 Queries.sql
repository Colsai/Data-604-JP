-- String Concatenation
select empid, firstname + N' ' + lastname as fullname
from hr.employees

-- Page 64
select custid, country, region, city,
	country + N',' + region + N',' + city as location
from sales.Customers

-- Pg 65 substring (selects the first three characters from a string)
select substring('abcde', 1,3);

--  (the end of the string)
select right ('abcde', 3);

-- Length of a string
select len(N'freedom');

-- pg. 66 The first position of a space ' '
select charindex(' ', 'Itzik Ben-Gan');

-- Replace the numbers
select replace('1-a 2-b', '-', ':');

-- Replicate (repeats the string x number of times)
select replicate('abc', 9)

-- Makes it easie to generate society and supplierid
select supplierid,
	right(replicate('0', 9) + cast(supplierid as varchar(10)), 10) as strsupplierid
from production.suppliers

-- Make uppercase
select upper ('the rain clacked over the metal roof')

-- Make lowercase
select lower ('THE rain clacked OVER the metal roof')

-- Pg. 69 Right and left space removal with 'trim
select rtrim ('ERA                ');
select ltrim ('			ERA');

--Format can add zeroes, etc to the beginning of the string
select format(1759, '00');

-- Compress returns a binary (70)
select compress(N'This is my cv. Imagine if it was much longer.');

-- select value from string_split(string,separator)
-- Splits the string as csv
select cast(value as int) as myvalue
from string_split('10248,10249,10250', ',') as s;

-- Like predicate (with wildcard, searches for character string match)
select empid, lastname from hr.employees
where lastname like N'S%';

-- Note: N is case sensitive (National)
select empid, lastname from hr.employees
where lastname like N'_e%';

-- If you want a LIST of characters, we can look for people who are ABC
select empid, lastname
from hr.employees
where lastname like N'[ABC]%'

select empid, lastname
from hr.employees
where lastname like N'[ACSRNB]%'

-- Looks for A through E
select empid, lastname
from hr.employees
where lastname like N'[A-E]%';

-- With the ^ symbol, looks for instances where the lastname is out of bounds
select empid, lastname
from hr.employees
where lastname like N'[^A-E]%';

-- Literals
select orderid, custid, empid, orderdate
from sales.orders
where orderdate = '20160212';

-- To Cast them as date objects
select orderid, custid, empid, orderdate
from sales.orders
where orderdate = cast('20160212' as date);

set language british;
select cast('02/12/2016' as date)

set language japanese;
select cast('02/12/2016' as date

set language english;

-- YYYYMMDD
select convert(date, '02/12/2016', 101);

select convert(date, '02/12/2016', 103);

select parse('02/12/2016' as date using 'en-US');

select parse('02/12/2016' as date using 'en-gb');

drop table if exists sales.orders2;

select orderid, custid, empid, cast(orderdate as datetime) as orderdate
into sales.orders2
from sales.orders;

-- Select all from sales.orders2 table (just made)
select * from sales.orders2

-- Wasn't working... should convert
alter table sales.orders2
add constraint chk_orders2_orderdate
check( convert (char(12), orderdate, 114) = '00:00:00:0000');

-- All occurences of the orders from 2015
select orderid, custid, empid, orderdate
from sales.orders
where year(orderdate) = 2015;

select orderid, custid, empid, orderdate
from sales.orders
where orderdate >= '20150101' AND orderdate < = '20160101'; 

-- You can also select by picking the month 
select orderid, custid, empid, orderdate
from sales.orders
where year(orderdate) = 2016 and month(orderdate) = 2; 

-- Or use a range
select orderid, custid, empid, orderdate
from sales.orders
where orderdate >= '20160201' and orderdate < '20160301'

