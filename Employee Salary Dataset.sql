create database wndoP;
use wndoP;
drop database wndoP;

CREATE TABLE regions (
  region_id int primary key,
  region_name VARCHAR(25)
);

INSERT INTO regions (region_id, region_name) VALUES (1, 'Europe');
INSERT INTO regions (region_id, region_name) VALUES (2, 'Americas');
INSERT INTO regions (region_id, region_name) VALUES (3, 'Asia');
INSERT INTO regions (region_id, region_name) VALUES (4, 'Middle East and Africa');


CREATE TABLE countries (
  country_id CHAR(2) PRIMARY KEY,
  country_name VARCHAR(40),
  region_id int,
  FOREIGN KEY(region_id) REFERENCES regions(region_id));
  
  INSERT INTO countries (country_id, country_name, region_id) VALUES ('IT', 'Italy', 1);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('JP', 'Japan', 3);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('US', 'United States of America', 2);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('CA', 'Canada', 2);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('CN', 'China', 3);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('IN', 'India', 3);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('AU', 'Australia', 3);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('ZW', 'Zimbabwe', 4);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('SG', 'Singapore', 3);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('UK', 'United Kingdom', 1);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('FR', 'France', 1);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('DE', 'Germany', 1);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('ZM', 'Zambia', 4);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('EG', 'Egypt', 4);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('BR', 'Brazil', 2);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('CH', 'Switzerland', 1);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('NL', 'Netherlands', 1);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('MX', 'Mexico', 2);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('KW', 'Kuwait', 4);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('IL', 'Israel', 4);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('DK', 'Denmark', 1);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('ML', 'Malaysia', 3);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('NG', 'Nigeria', 4);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('AR', 'Argentina', 2);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('BE', 'Belgium', 1);
  
  CREATE TABLE locations (
  location_id    int PRIMARY KEY,
  street_address VARCHAR(40),
  postal_code    VARCHAR(12),
  city       VARCHAR(30)  NOT NULL,
  state_province VARCHAR(25),
  country_id     CHAR(2),
  FOREIGN KEY(country_id) REFERENCES countries(country_id)
);

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1000 , '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1100, '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1300, '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2000, '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2300, '198 Clementi North', '540198', 'Singapore', NULL, 'SG');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2400, '8204 Arthur St', NULL, 'London', NULL, 'UK');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2600, '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2800, 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
( 3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX');

CREATE TABLE departments (
  department_id  int primary key,
  department_name  VARCHAR(30) NOT NULL,
  manager_id       int,
  location_id      int,
  FOREIGN KEY(location_id) REFERENCES locations(location_id)
);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 10, 'Administration', 200, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 20, 'Marketing', 201, 1800);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 30, 'Purchasing', 114, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 40, 'Human Resources', 203, 2400);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 50, 'Shipping', 121, 1500);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 60, 'IT', 103, 1400);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 70, 'Public Relations', 204, 2700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 80, 'Sales', 145, 2500);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 90, 'Executive', 100, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 100, 'Finance', 108, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 110, 'Accounting', 205, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 120, 'Treasury', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 130, 'Corporate Tax', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 140, 'Control And Credit', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 150, 'Shareholder Services', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 160, 'Benefits', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 170, 'Manufacturing', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 180, 'Construction', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 190, 'Contracting', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 200, 'Operations', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 210, 'IT Support', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 220, 'NOC', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 230, 'IT Helpdesk', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 240, 'Government Sales', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 250, 'Retail Sales', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 260, 'Recruiting', NULL, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
( 270, 'Payroll', NULL, 1700);


CREATE TABLE employees (
  employee_id   int primary Key,
  first_name     VARCHAR(20),
  last_name      VARCHAR(25)  NOT NULL,
  email          VARCHAR(25)   NOT NULL UNIQUE ,
  phone_number   VARCHAR(20),
  hire_date      DATE   NOT NULL,
  job_id         VARCHAR(10)  NOT NULL,
  salary         double(8,2) CHECK (salary > 0),
  commission_pct double(2,2),
  manager_id     int,
  department_id int,
  FOREIGN KEY(department_id) REFERENCES departments(department_id)
);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 100, 'Steven', 'King', 'SKING', '515.123.4567', '2003-06-17', 'AD_PRES', 24000, NULL, NULL, 90);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21', 'AD_VP', 17000, NULL, 100, 90);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '2001-01-13', 'AD_VP', 17000, NULL, 100, 90);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03', 'IT_PROG', 9000, NULL, 102, 60);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2007-05-21', 'IT_PROG', 6000, NULL, 103, 60);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '2005-06-25', 'IT_PROG', 4800, NULL, 103, 60);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '2006-02-05', 'IT_PROG', 4800, NULL, 103, 60);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '2007-02-07', 'IT_PROG', 4200, NULL, 103, 60);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '2002-08-17', 'FI_MGR', 12008, NULL, 101, 100);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '2002-08-16', 'FI_ACCOUNT', 9000, NULL, 108, 100);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 110, 'John', 'Chen', 'JCHEN', '515.124.4269', '2005-09-28', 'FI_ACCOUNT', 8200, NULL, 108, 100);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '2005-09-30', 'FI_ACCOUNT', 7700, NULL, 108, 100);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '2006-03-07', 'FI_ACCOUNT', 7800, NULL, 108, 100);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '2007-12-07', 'FI_ACCOUNT', 6900, NULL, 108, 100);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '2002-12-07', 'PU_MAN', 11000, NULL, 100, 30);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '2003-05-18', 'PU_CLERK', 3100, NULL, 114, 30);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '2005-12-24', 'PU_CLERK', 2900, NULL, 114, 30);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '2005-07-24', 'PU_CLERK', 2800, NULL, 114, 30);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '2006-11-15', 'PU_CLERK', 2600, NULL, 114, 30);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '2007-08-10', 'PU_CLERK', 2500, NULL, 114, 30);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '2004-07-18', 'ST_MAN', 8000, NULL, 100, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '2005-04-10', 'ST_MAN', 8200, NULL, 100, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '2003-05-01', 'ST_MAN', 7900, NULL, 100, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '2005-10-10', 'ST_MAN', 6500, NULL, 100, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '2007-11-16','ST_MAN', 5800, NULL, 100, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '2005-07-16', 'ST_CLERK', 3200, NULL, 120, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '2006-09-28', 'ST_CLERK', 2700, NULL, 120, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 127, 'James', 'Landry', 'JLANDRY', '650.124.1334', '2007-01-14', 'ST_CLERK', 2400, NULL, 120, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '2008-03-08', 'ST_CLERK', 2200, NULL, 120, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '2005-08-20', 'ST_CLERK', 3300, NULL, 121, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234','2005-10-30', 'ST_CLERK', 2800, NULL, 121, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '2005-02-16', 'ST_CLERK', 2500, NULL, 121, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '2007-04-10', 'ST_CLERK', 2100, NULL, 121, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934','2004-06-14', 'ST_CLERK', 3300, NULL, 122, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834','2006-08-26', 'ST_CLERK', 2900, NULL, 122, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 135, 'Ki', 'Gee', 'KGEE', '650.127.1734','2007-12-12', 'ST_CLERK', 2400, NULL, 122, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '2008-02-06', 'ST_CLERK', 2200, NULL, 122, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234','2003-07-14', 'ST_CLERK', 3600, NULL, 123, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '2005-10-26', 'ST_CLERK', 3200, NULL, 123, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 139, 'John', 'Seo', 'JSEO', '650.121.2019','2006-02-12', 'ST_CLERK', 2700, NULL, 123, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834','2006-04-06', 'ST_CLERK', 2500, NULL, 123, 50);

iNSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '2003-10-17', 'ST_CLERK', 3500, NULL, 124, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '2005-01-29', 'ST_CLERK', 3100, NULL, 124, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '2006-03-15', 'ST_CLERK', 2600, NULL, 124, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '2006-07-09', 'ST_CLERK', 2500, NULL, 124, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '2004-10-10', 'SA_MAN', 14000, .4, 100, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '2005-01-05', 'SA_MAN', 13500, .3, 100, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '2005-03-01', 'SA_MAN', 12000, .3, 100, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '2007-10-15', 'SA_MAN', 11000, .3, 100, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '2008-01-29', 'SA_MAN', 10500, .2, 100, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '2005-01-30', 'SA_REP', 10000, .3, 145, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '2005-03-24', 'SA_REP', 9500, .25, 145, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '2005-08-20', 'SA_REP', 9000, .25, 145, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '2006-03-30', 'SA_REP', 8000, .2, 145, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '2006-12-09', 'SA_REP', 7500, .2, 145, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '2007-11-23', 'SA_REP', 7000, .15, 145, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 156, 'Janette', 'King', 'JKING', '011.44.1345.429268', '2004-01-30', 'SA_REP', 10000, .35, 146, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '2004-03-04', 'SA_REP', 9500, .35, 146, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '2004-08-01', 'SA_REP', 9000, .35, 146, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '2005-03-10', 'SA_REP', 8000, .3, 146, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '2005-12-15', 'SA_REP', 7500, .3, 146, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268','2006-11-03', 'SA_REP', 7000, .25, 146, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268','2005-11-11', 'SA_REP', 10500, .25, 147, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268','2007-03-19', 'SA_REP', 9500, .15, 147, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268','2008-01-24', 'SA_REP', 7200, .10, 147, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 165, 'David', 'Lee', 'DLEE', '011.44.1346.529268','2008-02-23', 'SA_REP', 6800, .1, 147, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268','2008-03-24', 'SA_REP', 6400, .10, 147, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268','2008-04-21', 'SA_REP', 6200, .10, 147, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268','2005-03-11','SA_REP', 11500, .25, 148, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268','2006-03-23','SA_REP', 10000, .20, 148, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268','2006-01-24','SA_REP', 9600, .20, 148, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268','2007-02-23', 'SA_REP', 7400, .15, 148, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268','2007-03-24', 'SA_REP', 7300, .15, 148, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268','2008-04-21', 'SA_REP', 6100, .10, 148, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267','2004-05-11', 'SA_REP', 11000, .30, 149, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266','2005-03-19','SA_REP', 8800, .25, 149, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265','2006-03-24', 'SA_REP', 8600, .20, 149, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264','2006-04-23', 'SA_REP', 8400, .20, 149, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263','2007-05-24','SA_REP', 7000, .15, 149, NULL);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262','2008-01-04','SA_REP', 6200, .10, 149, 80);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876','2006-01-24', 'SH_CLERK', 3200, NULL, 120, 50);


INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '2006-02-23', 'SH_CLERK', 3100, NULL, 120, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '2007-06-21', 'SH_CLERK', 2500, NULL, 120, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '2008-02-03',  'SH_CLERK', 2800, NULL, 120, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '2004-01-27', 'SH_CLERK', 4200, NULL, 121, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', '2005-02-20', 'SH_CLERK', 4100, NULL, 121, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '2006-06-24', 'SH_CLERK', 3400, NULL, 121, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '2007-02-07', 'SH_CLERK', 3000, NULL, 121, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '2005-06-14', 'SH_CLERK', 3800, NULL, 122, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '2005-08-13', 'SH_CLERK', 3600, NULL, 122, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', '2006-07-11', 'SH_CLERK', 2900, NULL, 122, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '2007-12-19', 'SH_CLERK', 2500, NULL, 122, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', '2004-02-04', 'SH_CLERK', 4000, NULL, 123, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '2005-03-03', 'SH_CLERK', 3900, NULL, 123, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '2006-07-01', 'SH_CLERK', 3200, NULL, 123, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 195, 'Vance', 'Jones', 'VJONES', '650.501.4876', '2007-03-17', 'SH_CLERK', 2800, NULL, 123, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '2006-04-24', 'SH_CLERK', 3100, NULL, 124, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '2006-05-23', 'SH_CLERK', 3000, NULL, 124, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '2007-06-21', 'SH_CLERK', 2600, NULL, 124, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '2008-01-13', 'SH_CLERK', 2600, NULL, 124, 50);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '2003-09-17', 'AD_ASST', 4400, NULL, 101, 10);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '2004-02-17', 'MK_MAN', 13000, NULL, 100, 20);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '2005-08-17', 'MK_REP', 6000, NULL, 201, 20);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '2002-06-07', 'HR_REP', 6500, NULL, 101, 40);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', '2002-06-07', 'PR_REP', 10000, NULL, 101, 70);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '2002-06-07', 'AC_MGR', 12008, NULL, 101, 110);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
( 206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '2002-06-07', 'AC_ACCOUNT', 8300, NULL, 205, 110);


CREATE TABLE jobs (
  job_id         VARCHAR(10) primary key,
  job_title      VARCHAR(35)  NOT NULL,
  min_salary     int,
  max_salary     int
);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'AD_PRES', 'President', 20080, 40000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'AD_VP', 'Administration Vice President', 15000, 30000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'AD_ASST', 'Administration Assistant', 3000, 6000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'FI_MGR', 'Finance Manager', 8200, 16000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'FI_ACCOUNT', 'Accountant', 4200, 9000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'AC_MGR', 'Accounting Manager', 8200, 16000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'AC_ACCOUNT', 'Public Accountant', 4200, 9000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'SA_MAN', 'Sales Manager', 10000, 20080);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'SA_REP', 'Sales Representative', 6000, 12008);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'PU_MAN', 'Purchasing Manager', 8000, 15000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'PU_CLERK', 'Purchasing Clerk', 2500, 5500);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'ST_MAN', 'Stock Manager', 5500, 8500);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'ST_CLERK', 'Stock Clerk', 2008, 5000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'SH_CLERK', 'Shipping Clerk', 2500, 5500);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'IT_PROG', 'Programmer', 4000, 10000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'MK_MAN', 'Marketing Manager', 9000, 15000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'MK_REP', 'Marketing Representative', 4000, 9000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'HR_REP', 'Human Resources Representative', 4000, 9000);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
( 'PR_REP', 'Public Relations Representative', 4500, 10500);


CREATE TABLE job_history (
  employee_id   int  NOT NULL primary key,
  start_date    DATE  NOT NULL ,
  end_date      DATE  NOT NULL ,
  job_id        VARCHAR(10) NOT NULL,
  department_id int,
  fOREIGN KEY (job_id) REFERENCES jobs(job_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
  );
  
  INSERT INTO job_history
VALUES (102, STR_TO_DATE('13-Jan-1993', '%d-%M-%Y'),STR_TO_DATE('24-Jul-1998', '%d-%M-%Y'),'IT_PROG',60);


INSERT INTO job_history
VALUES (101,STR_TO_DATE('28-Oct-1993','%d-%M-%Y'),STR_TO_DATE('15-Mar-1997','%d-%M-%Y'),'AC_MGR',110);


INSERT INTO job_history
VALUES (201,STR_TO_DATE('27-Feb-1996','%d-%M-%Y'),STR_TO_DATE('19-Dec-1999','%d-%M-%Y'),'MK_REP',20);

INSERT INTO job_history
VALUES (114,STR_TO_DATE('24-Mar-1998','%d-%M-%Y'),STR_TO_DATE('31-Dec-1999','%d-%M-%Y'),'ST_CLERK',50);

INSERT INTO job_history
VALUES (122,STR_TO_DATE('01-Jan-1999','%d-%M-%Y'),STR_TO_DATE('31-Dec-1999','%d-%M-%Y'),'ST_CLERK',50);

INSERT INTO job_history
VALUES (200,STR_TO_DATE('17-Sep-1987','%d-%M-%Y'),STR_TO_DATE('17-Jun-1993','%d-%M-%Y'),'AD_ASST',90);

INSERT INTO job_history
VALUES (176,STR_TO_DATE('24-Mar-1998','%d-%M-%Y'),STR_TO_DATE('31-Dec-1998','%d-%M-%Y'),'SA_REP',80);

select * from job_history;



select employee_id,department_id,salary,rank() over (partition by department_id order by salary desc)
as sal_rank from employees;

select employee_id,department_id,salary, sum(salary) over (partition by department_id order by salary rows between
unbounded preceding and current row) as running_total from employees;

select employee_id,department_id,salary, max(salary) over (partition by department_id) as sal_avg
from employees;

select employee_id, department_id,salary, max(salary) over (partition by department_id) as sal_avg from employees;

select employee_id,department_id,salary, percent_rank() over(partition by department_id order by salary)
as salary_percentile from employees;

select employee_id,department_id,salary,
lag(salary) over (partition by department_id order by salary) as pre_salary,
lead(salary) over (partition by department_id order by salary) as next_salary
from employees;

select * from (select employee_id,department_id,salary, dense_rank() over (partition by department_id order by salary desc) as rnk from 
employees) t where rnk <=3;

select e.employee_id,e.job_id as current_job,j.job_id as previous_job,j.end_date from employees e join job_history j 
on e.employee_id = j.employee_id;

select c.country_name,e.salary, sum(e.salary) over (partition by c.country_name order by e.salary) as cumulative_salary from employees e join departments d on e.department_id = d.department_id 
join locations l on d.location_id = l.location_id join countries c on l.country_id = c.country_id;

select c.country_name, e.salary, sum(e.salary) over (partition by c.country_name order by e.salary) as cumulative_salary from employees e join departments d 
on e.department_id = d.department_id join locations l on d.location_d = l.location_id join countries on l.country_id = c.country_id;

select employee_id,department_id,salary from (select employee_id,department_id,salary, count(*) over (partition by department_id,salary) as cnt from employees) t
where cnt> 1;

select employee_id,hire_date, rank() over (order by hire_date) as ten_rnk from employees;

select employee_id,department_id,salary, lead(salary) over (partition by department_id order by salary desc) as sal_gap
from employees;

select department_id, max(salary) as highest_salary, min(salary) as lowest_salary from employees
group by department_id;

select avg(salary) as avg_salary from employees;

select employee_id, sum(end_date - start_date) as total_days_worked from job_history group by employee_id;

select job_id,employee_id,salary, sum(salary) over (partition by job_id order by salary) as cumulative_salary from employees;

select employee_id hire_date, count(*) over ( order by hire_date rows between unbounded preceding and 1 preceding) as joind_before
from employees;

select e.employee_id,e.salary as employee_salary, m.salary as manager_salary,e.salary - m.salary as difference from employees e join employees m 
on e.manager_id = m.employee_id;

select department_id, extract(year from hire_date) as year, avg(salary) as avg_salary from employees group by department_id,
extract(year from hire_date) order by department_id, year;

select employee_id, max(end_date - start_date) as long_duration from job_history group by employee_id;

select employee_id,salary, rank() over (order by salary desc) as sal_rnk from employees;

select department_id, min(hire_date) as first_hired, max(hire_date) as last_hired from employees 
group by department_id;

select e.employee_id,e.job_id,e.salary from employees e where salary > (select avg(salary) from employees where job_id = e.job_id);

select e.employee_id, e.salary,jh.end_date  from employees e join job_history jh on e.employee_id = jh.employee_id
where jh.end_date = (select max(end_date) from job_history where employee_id = e.employee_id); 

select year,hires, sum(hires) over (order by year) as running_total from (select extract(year from hire_date) as year, count(*) as hires from employees group by
extract(year from hire_date)) t;

select distinct m.employee_id as manager_id, m.first_name,m.last_name as manager_name, count(e.employee_id) over (partition by m.employee_id) as direct_reports from employees e join
employees m on e.manager_id = m.employee_id; 

select j.job_title, avg(end_date - start_date) as avg_days from job_history h join jobs j on h.job_id = j.job_id
group by j.job_title;

select c.country_name, sum(e.salary) as total_salary from employees e join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id join countries c on l.country_id = c.country_id group by c.country_name;

select employee_id,hire_date,salary, avg(salary) over (order by hire_date rows between 2 preceding and current row)
as moving_avg_sal from employees;

select employee_id from job_history group by employee_id having count(distinct department_id) > 1;

select employee_id from job_history group by employee_id having count(distinct department_id) = 1;

select * from employees order by hire_date limit 1;

select e.employee_id,j.job_title,e.commission_pct, rank() over (partition by j.job_title order by e.commission_pct desc) as rnk_com from employees e join jobs j on e.job_id = j.job_id
where e.commission_pct is not null;


select employee_id, first_name, last_name, department_id, salary, rank() over (partition by
department_id order by salary desc) as salary_rank from employees;

select department_id, employee_id, first_name, salary, sum(salary) over (partition by
department_id order by salary desc) as running_salary_total from employees;




