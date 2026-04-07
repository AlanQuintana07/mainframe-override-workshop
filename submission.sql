-- Step 1: Find forum post about EmptyStack in April 2048
SELECT author, content, date FROM forum_posts WHERE content ILIKE '%emptystack%' AND date >= '2048-04-01' AND date < '2048-05-01';

-- Step 2: Get last name of that user
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';

-- Step 3: Find others with the same last name (Steele)
SELECT * FROM forum_accounts WHERE last_name = 'Steele';

-- Step 4: Find EmptyStack employees with the same last name
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';

-- Step 5: Identify the employee (Andrew Steele) and get credentials
SELECT username, password FROM emptystack_accounts WHERE last_name = 'Steele';
-- Andrew Steele → username: triple-cart-38, password: password456

-- Step 6: Find message about self-driving taxi project 
SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';
-- Message from admin: your-boss-99
-- Project name: Project TAXI

-- Step 7: Get admin credentials
SELECT username, password FROM emptystack_accounts WHERE username = 'your-boss-99';
-- password: notagaincarter

-- Step 8: Find project ID
SELECT * FROM emptystack_projects WHERE code ILIKE '%TAXI%';
-- Project ID: DczE0v2b

-- Step 9: Stop the project
-- node mainframe -stop DczE0v2b your-boss-99 notagaincarter

-- Result:
-- Project shutdown complete.