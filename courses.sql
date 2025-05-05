
USE Xoventa;

-- Create courses table
CREATE TABLE IF NOT EXISTS courses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  category VARCHAR(100) NOT NULL,
  name VARCHAR(255) NOT NULL,
  short_description TEXT,
  description TEXT,
  image VARCHAR(255),
  icon VARCHAR(100),
  duration VARCHAR(50),
  level VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create course_syllabus table
CREATE TABLE IF NOT EXISTS course_syllabus (
  id INT AUTO_INCREMENT PRIMARY KEY,
  course_id INT NOT NULL,
  section_number INT NOT NULL,
  section_title VARCHAR(255) NOT NULL,
  section_content TEXT,
  FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE
);

-- Insert sample data for courses
INSERT INTO courses (category, name, short_description, description, image, icon, duration, level) VALUES
('Programming', 'Python', 'Learn Python programming from basics to advanced concepts', 'Python is a high-level, interpreted programming language known for its readability and versatility. This comprehensive course covers everything from basic syntax to advanced concepts like object-oriented programming, data analysis, and web development with Python frameworks. You ll learn through hands-on projects and real-world applications.', 'python-course.jpg', 'bi-filetype-py', '12 Weeks', 'Beginner to Advanced'),
('Development', 'Web Development', 'Master front-end and back-end web development technologies', 'Our Web Development course provides a comprehensive introduction to both front-end and back-end technologies. You ll learn HTML, CSS, JavaScript for creating responsive and interactive user interfaces. On the back-end, you ll explore server-side programming, database integration, and API development. By the end of this course, you ll be able to build complete, functional websites from scratch.', 'web-development.jpg', 'bi-globe', '16 Weeks', 'Intermediate'),
('Full Stack', 'MERN Stack', 'Build full-stack applications with MongoDB, Express, React, and Node.js', 'The MERN Stack course teaches you how to build modern web applications using MongoDB, Express.js, React, and Node.js. This powerful combination allows you to create dynamic, data-driven applications with a JavaScript-based technology stack. You ll learn state management, RESTful API design, authentication, and deployment strategies for full-stack applications.', 'mern-stack.jpg', 'bi-stack', '20 Weeks', 'Advanced'),
('Programming', 'JavaScript', 'Master the fundamentals of JavaScript for dynamic web development', 'This course covers JavaScript from the basics to advanced topics. You will learn about data types, functions, objects, DOM manipulation, event handling, asynchronous programming with promises and async/await, and more. Hands-on projects will solidify your understanding.', 'javascript-course.jpg', 'bi-filetype-js', '10 Weeks', 'Beginner to Intermediate'),
('Programming', 'PHP & MySQL', 'Build dynamic websites with PHP and MySQL', 'Learn how to create dynamic web pages using PHP for server-side logic and MySQL for data storage. This course covers syntax, form handling, sessions, database connections, CRUD operations, and security best practices.', 'php-mysql-course.jpg', 'bi-database', '12 Weeks', 'Beginner to Intermediate'),
('Programming', 'React JS', 'Learn to build reactive user interfaces with React', 'React JS is a powerful front-end library for building user interfaces. This course covers JSX, components, props, state, lifecycle methods, hooks, and integrating APIs. You will build interactive SPAs with best practices and modern tools.', 'react-course.jpg', 'bi-filetype-jsx', '10 Weeks', 'Intermediate'),
('Programming', 'Angular JS', 'Develop scalable applications using Angular JS framework', 'Explore AngularJS and build structured web applications. You’ll learn about modules, controllers, directives, two-way data binding, services, and routing. The course also introduces RESTful communication and form validation.', 'angular-course.jpg', 'bi-code-slash', '10 Weeks', 'Intermediate'),
('Programming', 'Java', 'Comprehensive Java programming course for building robust applications', 'This Java course covers the fundamentals of object-oriented programming using Java. You will learn syntax, classes, inheritance, interfaces, exception handling, collections, file I/O, and multithreading. The course also introduces GUI development and JDBC for database interaction.', 'java-course.jpg', 'bi-cup-hot', '14 Weeks', 'Beginner to Intermediate'),
('Programming', 'C & C++', 'Master C and C++ programming for system-level and application development', 'Learn both C and C++ from the ground up. This course covers C basics like pointers, memory management, and file handling, and C++ features such as classes, objects, templates, and the Standard Template Library (STL). Ideal for understanding low-level programming and object-oriented concepts.', 'c-cpp-course.jpg', 'bi-terminal', '14 Weeks', 'Beginner to Intermediate'),
('Development', 'App Development', 'Design and build mobile applications for Android and iOS', 'This course covers the fundamentals of mobile app development using tools like Flutter and React Native. You will learn UI/UX design principles, app architecture, state management, API integration, and deployment to app stores.', 'app-development.jpg', 'bi-phone', '14 Weeks', 'Intermediate'),
('Development', 'Front End Development', 'Master the art of crafting user interfaces with HTML, CSS, and JavaScript', 'Front End Development course focuses on building modern, responsive, and interactive user interfaces using HTML5, CSS3, JavaScript, and popular frameworks like Bootstrap. You ll also explore UI/UX principles, accessibility, and performance optimization.', 'front-end.jpg', 'bi-layers', '12 Weeks', 'Beginner to Intermediate'),
('Development', 'Backend Development (PHP)', 'Learn server-side development using PHP and MySQL', 'This course teaches how to handle server-side operations using PHP. You will build dynamic websites, perform database operations with MySQL, manage sessions, handle file uploads, and implement security best practices.', 'backend-php.jpg', 'bi-hdd-network', '12 Weeks', 'Intermediate'),
('Development', 'Backend Development (Python)', 'Develop robust backend systems using Python frameworks like Django and Flask', 'This course introduces Python backend development using frameworks such as Flask and Django. You’ll learn routing, database integration, user authentication, REST API creation, and deployment strategies.', 'backend-python.jpg', 'bi-server', '12 Weeks', 'Intermediate'),
('Full Stack', 'MEAN Stack', 'Build full-stack apps using MongoDB, Express, Angular, and Node.js', 'The MEAN Stack course teaches you to develop modern, scalable applications using Angular for front-end and Node.js/Express for back-end with MongoDB as the database. Learn routing, services, REST API, JWT authentication, and deployment.', 'mean-stack.jpg', 'bi-bricks', '20 Weeks', 'Advanced'),
('Full Stack', 'Python Full Stack', 'Develop full-stack apps with Python, Django/Flask, and modern front-end tools', 'Learn both front-end and back-end development using HTML, CSS, JavaScript, along with Python-based frameworks like Django or Flask. Topics include ORM, authentication, REST APIs, and deploying complete applications.', 'python-fullstack.jpg', 'bi-diagram-3', '20 Weeks', 'Intermediate to Advanced'),
('Full Stack', 'PHP Full Stack', 'End-to-end web development using PHP, MySQL, HTML, CSS, and JS', 'This course covers building dynamic web apps using PHP and MySQL for the backend and HTML, CSS, JS (with frameworks) for the frontend. Includes session management, MVC architecture, and deployment.', 'php-fullstack.jpg', 'bi-layers-half', '18 Weeks', 'Intermediate'),
('Full Stack', 'Java Full Stack', 'Full-stack web development with Java Spring Boot and modern front-end', 'Master full-stack development using Java (Spring Boot) for backend, with frontend technologies like Angular or React. Includes database connectivity, REST API development, security, and deployment.', 'java-fullstack.jpg', 'bi-collection', '20 Weeks', 'Advanced'),
('Design', 'UX UI Design', 'Design user-friendly and visually appealing interfaces', 'Learn the principles of user experience and user interface design. This course covers wireframing, prototyping, design systems, usability testing, and tools like Figma and Adobe XD.', 'ux-ui.jpg', 'bi-layout-text-window-reverse', '10 Weeks', 'Beginner to Intermediate'),
('Design', 'Graphic Design', 'Master the art of visual communication', 'This course teaches the fundamentals of graphic design including typography, color theory, composition, branding, and visual storytelling using tools like Adobe Photoshop, Illustrator, and Canva.', 'graphic-design.jpg', 'bi-palette', '12 Weeks', 'Beginner'),
('Design', 'Web Design', 'Design modern, responsive, and accessible websites', 'This course focuses on designing websites with a balance of functionality and aesthetics. Learn layout principles, responsive design, HTML/CSS basics, and web design tools.', 'web-design.jpg', 'bi-pc-display-horizontal', '10 Weeks', 'Beginner to Intermediate'),
('Professional', 'Digital Marketing', 'Learn SEO, SEM, social media, and online strategy', 'This comprehensive course covers digital marketing strategies such as search engine optimization (SEO), pay-per-click (PPC), email marketing, social media, and analytics using tools like Google Ads and Meta Business Suite.', 'digital-marketing.jpg', 'bi-broadcast', '10 Weeks', 'Intermediate'),
('Professional', 'Data Science', 'Extract insights from data using Python, statistics, and machine learning', 'Learn to clean, analyze, and visualize data using Python libraries like Pandas, NumPy, and Matplotlib. Build predictive models using machine learning techniques with scikit-learn.', 'data-science.jpg', 'bi-bar-chart', '16 Weeks', 'Advanced');

-- Insert sample data for course syllabus
INSERT INTO course_syllabus (course_id, section_number, section_title, section_content) VALUES
(1, 1, 'Introduction to Python', 'Overview of Python, Installation and setup, Basic syntax, Variables and data types, Control structures'),
(1, 2, 'Data Structures in Python', 'Lists, Tuples, Dictionaries, Sets, Working with collections'),
(1, 3, 'Functions and Modules', 'Defining functions, Parameters and return values, Lambda functions, Creating and importing modules'),
(1, 4, 'Object-Oriented Programming', 'Classes and objects, Inheritance, Polymorphism, Encapsulation, Magic methods'),
(1, 5, 'File Handling and Exception Management', 'Reading and writing files, Working with CSV and JSON, Exception handling, Custom exceptions'),

(2, 1, 'HTML Fundamentals', 'Document structure, Elements and attributes, Forms, Semantic HTML, Accessibility'),
(2, 2, 'CSS', 'Selectors, Box model, Flexbox, Grid, Responsive design, CSS frameworks'),
(2, 3, 'JavaScript', 'Syntax, DOM manipulation, Events, Asynchronous JavaScript, ES6+ features'),
(2, 4, 'Backend Development', 'Server-side programming, RESTful APIs, Database integration, Authentication'),
(2, 5, 'Web Hosting', 'Deployment options, Domain management, SSL certificates, Performance optimization'),

(3, 1, 'MongoDB', 'NoSQL databases, CRUD operations, Schema design, Aggregation framework, Indexing'),
(3, 2, 'Express.js', 'Server setup, Routing, Middleware, Error handling, API development'),
(3, 3, 'React', 'Components, JSX, State and props, Hooks, Context API, Redux'),
(3, 4, 'Node.js', 'Event loop, Modules, File system, Streams, Authentication'),
(3, 5, 'Project - Designing A Complete Website', 'Full-stack application development, State management, Authentication, Deployment, Testing'),

(4, 1, 'JavaScript Basics', 'Variables, Data types, Operators, Control flow'),
(4, 2, 'Functions and Objects', 'Function declarations, Arrow functions, Object creation and manipulation'),
(4, 3, 'DOM Manipulation', 'Selecting elements, Modifying DOM, Event handling'),
(4, 4, 'Advanced JavaScript', 'Closures, Scope, Prototypes, this keyword, ES6+ features'),
(4, 5, 'Asynchronous JavaScript', 'Callbacks, Promises, Async/Await, Fetch API'),

-- PHP & MySQL Course Syllabus
(5, 1, 'PHP Basics', 'Syntax, Variables, Control structures, Functions'),
(5, 2, 'Forms and Sessions', 'Form handling, Sessions, Cookies'),
(5, 3, 'MySQL Integration', 'Connecting to database, SELECT, INSERT, UPDATE, DELETE queries'),
(5, 4, 'CRUD Operations', 'Building a complete CRUD app with PHP & MySQL'),
(5, 5, 'Security and Deployment', 'Input validation, SQL injection prevention, Hosting PHP apps'),

-- React JS Course Syllabus
(6, 1, 'Introduction to React', 'JSX, Components, Props, State'),
(6, 2, 'Hooks and Lifecycle', 'useState, useEffect, useRef, Custom hooks'),
(6, 3, 'Routing and Forms', 'React Router, Form handling, Controlled components'),
(6, 4, 'State Management', 'Context API, Redux basics, useReducer'),
(6, 5, 'API Integration and Deployment', 'Fetching data, Error handling, Build and deploy'),

-- Angular JS Course Syllabus
(7, 1, 'AngularJS Basics', 'Introduction, MVC architecture, Setup and structure'),
(7, 2, 'Controllers and Directives', 'ng-controller, Custom directives, Templates'),
(7, 3, 'Data Binding and Services', 'Two-way binding, Dependency Injection, Services'),
(7, 4, 'Routing and Forms', 'ngRoute module, Single Page Applications, Form validation'),
(7, 5, 'REST APIs and Deployment', 'HTTP requests, Interacting with REST APIs, Deployment techniques'),

(8, 1, 'Java Basics', 'Syntax, Variables, Data types, Operators, Control flow'),
(8, 2, 'Object-Oriented Programming', 'Classes, Objects, Inheritance, Interfaces, Polymorphism'),
(8, 3, 'Exception Handling and Collections', 'Try-catch blocks, Custom exceptions, ArrayList, HashMap'),
(8, 4, 'File Handling and Multithreading', 'FileReader, FileWriter, Threads, Synchronization'),
(8, 5, 'GUI and Database', 'Swing/AWT basics, JDBC connection, SQL operations'),

-- C & C++ Course Syllabus
(9, 1, 'C Fundamentals', 'Syntax, Data types, Operators, Control statements'),
(9, 2, 'Pointers and Memory Management', 'Pointers, Dynamic memory, malloc/free'),
(9, 3, 'Structures and File Handling', 'Structs, File I/O operations'),
(9, 4, 'C++ OOP Concepts', 'Classes, Constructors, Inheritance, Polymorphism'),
(9, 5, 'Templates and STL', 'Function templates, Class templates, Vector, Map, Set from STL'),

(10, 1, 'Introduction to App Development', 'Platforms, Tools (Flutter/React Native), Environment Setup'),
(10, 2, 'UI Design and Components', 'Widgets, Layouts, Navigation, Styling'),
(10, 3, 'State Management and Storage', 'Provider, Redux, Local Storage, Shared Preferences'),
(10, 4, 'API Integration and Firebase', 'Fetching data, Firebase setup, Authentication'),
(10, 5, 'Testing and Deployment', 'Debugging, Testing, Publishing to Play Store and App Store'),

-- Front End Development Syllabus
(11, 1, 'HTML & CSS', 'Semantic HTML, Forms, Layouts, Flexbox, Grid'),
(11, 2, 'JavaScript Basics', 'Variables, Functions, DOM Manipulation, Events'),
(11, 3, 'Advanced JavaScript & ES6', 'Arrow functions, Promises, Modules'),
(11, 4, 'Front-End Frameworks', 'Bootstrap, Tailwind, Material Design'),
(11, 5, 'UI/UX & Accessibility', 'Design principles, Responsive design, ARIA, Performance'),

-- Backend Development (PHP) Syllabus
(12, 1, 'PHP Basics and Syntax', 'Variables, Arrays, Control Flow, Functions'),
(12, 2, 'Working with Forms and Sessions', 'GET/POST, Validation, Sessions, Cookies'),
(12, 3, 'Database with MySQL', 'CRUD operations, Joins, Queries, PDO/MySQLi'),
(12, 4, 'Authentication and Security', 'Login systems, Hashing, CSRF, SQL Injection prevention'),
(12, 5, 'REST API and Hosting', 'Creating APIs with PHP, JSON, Deployment'),

-- Backend Development (Python) Syllabus
(13, 1, 'Python and Flask/Django Basics', 'Introduction, Project setup, Views and URLs'),
(13, 2, 'Templates and Static Files', 'Jinja templating, Forms, Bootstrap integration'),
(13, 3, 'Models and Databases', 'ORM, Migrations, SQLLite/PostgreSQL'),
(13, 4, 'Authentication and Authorization', 'User login, Sessions, Permissions'),
(13, 5, 'REST APIs and Deployment', 'Django REST Framework/Flask API, Hosting on Heroku/VPS'),

(14, 1, 'MongoDB', 'Schema design, CRUD operations, Aggregation, Indexing'),
(14, 2, 'Express.js', 'Routing, Middleware, REST APIs, JWT Authentication'),
(14, 3, 'Angular', 'Components, Data binding, Services, Routing, Forms'),
(14, 4, 'Node.js', 'File handling, Events, Modules, Server creation'),
(14, 5, 'Project Deployment', 'Full-stack integration, Hosting, Testing, CI/CD'),

-- Python Full Stack Syllabus
(15, 1, 'Front-End Basics', 'HTML, CSS, JavaScript fundamentals, Responsive design'),
(15, 2, 'Python and Django/Flask', 'Routing, Templates, ORM, Views'),
(15, 3, 'User Management and Security', 'Authentication, Sessions, CSRF, Permissions'),
(15, 4, 'REST API with DRF/Flask API', 'API development, Serializers, JSON, JWT'),
(15, 5, 'Deployment and DevOps', 'Using Heroku/VPS, Docker, GitHub Actions'),

-- PHP Full Stack Syllabus
(16, 1, 'Frontend Technologies', 'HTML, CSS, JavaScript, jQuery, Bootstrap'),
(16, 2, 'PHP Backend Basics', 'Syntax, Forms, Sessions, File Handling'),
(16, 3, 'Database with MySQL', 'CRUD operations, Joins, Security'),
(16, 4, 'MVC with PHP', 'Custom MVC structure, Routing, Controllers, Views'),
(16, 5, 'Final Project and Deployment', 'Building and deploying a full app, cPanel/VPS'),

-- Java Full Stack Syllabus
(17, 1, 'Frontend with Angular/React', 'Components, Services, Routing, State management'),
(17, 2, 'Java and Spring Boot', 'Controllers, Services, Repositories, Spring Security'),
(17, 3, 'Database Integration', 'JPA, Hibernate, MySQL/PostgreSQL'),
(17, 4, 'RESTful Web Services', 'CRUD API, JWT authentication, Error handling'),
(17, 5, 'Full-stack Integration and Deployment', 'API consumption, CI/CD, Docker, Cloud hosting'),

(18, 1, 'UX Foundations', 'User research, Personas, Information architecture, User flows'),
(18, 2, 'UI Principles', 'Layout, Typography, Color theory, Grids'),
(18, 3, 'Wireframing & Prototyping', 'Low to high fidelity designs, Tools: Figma, Adobe XD'),
(18, 4, 'Usability Testing', 'A/B Testing, Heuristics, Feedback collection'),
(18, 5, 'Project Work', 'End-to-end UX/UI case study project'),

-- Graphic Design
(19, 1, 'Design Basics', 'Elements of design, Visual hierarchy, Color theory'),
(19, 2, 'Typography & Branding', 'Fonts, Logo design, Brand guidelines'),
(19, 3, 'Image Editing & Illustration', 'Photoshop, Illustrator tools and techniques'),
(19, 4, 'Print & Digital Media', 'Posters, Brochures, Social media content'),
(19, 5, 'Portfolio Creation', 'Building a graphic design portfolio'),

-- Web Design
(20, 1, 'HTML & CSS Basics', 'Structure, Semantic HTML, Responsive CSS'),
(20, 2, 'Web Layouts', 'Flexbox, Grid, Component design'),
(20, 3, 'Design Tools', 'Figma, Adobe XD, Canva'),
(20, 4, 'UX Considerations', 'Navigation, Accessibility, Mobile-first'),
(20, 5, 'Website Mockup Project', 'Create a full responsive website design'),

-- Digital Marketing
(21, 1, 'Digital Marketing Overview', 'Inbound/Outbound, Strategy building'),
(21, 2, 'SEO & SEM', 'On-page/off-page SEO, Google Ads, Keyword research'),
(21, 3, 'Social Media Marketing', 'Meta Ads, Instagram, LinkedIn, YouTube strategies'),
(21, 4, 'Email Marketing & Analytics', 'Email campaigns, Google Analytics, ROI tracking'),
(21, 5, 'Capstone Project', 'Develop a full campaign strategy'),

-- Data Science
(22, 1, 'Python for Data Analysis', 'NumPy, Pandas, Data wrangling'),
(22, 2, 'Data Visualization', 'Matplotlib, Seaborn, Plotly'),
(22, 3, 'Statistics & Probability', 'Descriptive stats, Hypothesis testing, Distributions'),
(22, 4, 'Machine Learning Basics', 'Regression, Classification, Clustering'),
(22, 5, 'Final Project', 'Build and present a complete data science pipeline');