# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Course.delete_all  # prime database
Link.delete_all # delete links
Post.delete_all
Note.delete_all


Course.create(name: 'CS 1044', description: 'Intro Prog in C' ,teachers: 'Stevens', gpa:2.47, As: 20.15, Bs: 35.8, Cs: 23.1, Ds: 12.1, Fs: 8.85)
Course.create(name: 'CS 1054', description: 'Intro to Programming in Java' ,teachers: 'Ellis', gpa:3.37, As: 63.27, Bs: 26.51, Cs: 5.0, Ds: 1.12, Fs: 4.09)
Course.create(name: 'CS 1064', description: 'Intro to Programming in Python' ,teachers: 'Stevens', gpa:2.37, As: 28.3, Bs: 26.7, Cs: 21.7, Ds: 3.3, Fs: 20.0)
Course.create(name: 'CS 1114', description: 'Intro to Software Design' ,teachers: 'Edwards', gpa:2.66, As: 16.65, Bs: 45.15, Cs: 29.06, Ds: 6.46, Fs: 2.59)
Course.create(name: 'CS 1124', description: 'Intro to Media Computation' ,teachers: 'Monti', gpa:2.95, As: 32.5, Bs: 40.0, Cs: 21.25, Ds: 2.5, Fs: 3.75)
Course.create(name: 'CS 1604', description: 'Introduction to the Internet' ,teachers: 'Barnette', gpa:3.06, As: 48.6, Bs: 29.9, Cs: 11.8, Ds: 4.9, Fs: 4.9)
Course.create(name: 'CS 2104', description: 'Intro to Problem Solving in CS' ,teachers: 'Ellis, McQuain, Onufriev', gpa:3.01, As: 23.2, Bs: 59.25, Cs: 14.77, Ds: 2.25, Fs: 0.5)
Course.create(name: 'CS 2114', description: 'Softw Des & Data Structures' ,teachers: 'Barnette, Fouh Mbindi', gpa:2.78, As: 10.0, Bs: 63.14, Cs: 23.15, Ds: 1.15, Fs: 2.56)
Course.create(name: 'CS 2304', description: 'Self Study Prog Sys' ,teachers: 'Monti', gpa:3.58, As: 77.8, Bs: 14.8, Cs: 0.0, Ds: 0.0, Fs: 7.4)
Course.create(name: 'CS 2505', description: 'Intro Computer Organization' ,teachers: 'Jung, McQuain, Monti', gpa:2.52, As: 16.77, Bs: 32.9, Cs: 41.4, Ds: 3.43, Fs: 5.5)
Course.create(name: 'CS 2506', description: 'Intro to Computer Organization' ,teachers: 'McQuain', gpa:2.26, As: 19.1, Bs: 22.7, Cs: 32.7, Ds: 15.5, Fs: 10.0)
Course.create(name: 'CS 2984', description: 'SS:Intro to Physical Computing' ,teachers: 'Martin', gpa:3.67, As: 76.9, Bs: 15.4, Cs: 7.7, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 3114', description: 'Data Structures and Algorithms' ,teachers: 'North', gpa:2.7, As: 30.3, Bs: 36.25, Cs: 17.7, Ds: 5.05, Fs: 10.75)
Course.create(name: 'CS 3214', description: 'Computer Systems' ,teachers: 'Butt, Kafura', gpa:2.99, As: 27.2, Bs: 56.3, Cs: 12.35, Ds: 0.0, Fs: 4.1)
Course.create(name: 'CS 3304', description: 'Comparative Languages' ,teachers: 'Arthur', gpa:3.03, As: 36.0, Bs: 35.0, Cs: 23.0, Ds: 5.0, Fs: 1.0)
Course.create(name: 'CS 3414', description: 'Numerical Methods' ,teachers: 'Sandu', gpa:2.91, As: 42.9, Bs: 28.6, Cs: 14.3, Ds: 8.6, Fs: 5.7)
Course.create(name: 'CS 3604', description: 'Professionalism in Computing' ,teachers: 'Dunlap', gpa:3.35, As: 59.4, Bs: 27.5, Cs: 7.95, Ds: 4.05, Fs: 1.1)
Course.create(name: 'CS 3654', description: 'Intro Data Analytics & Visual' ,teachers: 'Smith', gpa:3.5, As: 83.3, Bs: 5.6, Cs: 0.0, Ds: 0.0, Fs: 11.1)
Course.create(name: 'CS 3704', description: 'Intermed Software Des' ,teachers: 'Balci, Soundararajan', gpa:3.26, As: 45.95, Bs: 46.1, Cs: 6.6, Ds: 0.0, Fs: 1.3)
Course.create(name: 'CS 3714', description: 'Mobile Software Development' ,teachers: 'McCrickard', gpa:3.52, As: 66.7, Bs: 25.4, Cs: 7.9, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 3744', description: 'Intro GUI Programming/Graphics' ,teachers: 'Gracanin', gpa:2.92, As: 32.7, Bs: 40.8, Cs: 16.3, Ds: 10.2, Fs: 0.0)
Course.create(name: 'CS 4104', description: 'Data and Algorithm Analysis' ,teachers: 'Murali', gpa:2.88, As: 25.8, Bs: 45.5, Cs: 21.2, Ds: 7.6, Fs: 0.0)
Course.create(name: 'CS 4114', description: 'Formal Languages' ,teachers: 'Heath', gpa:2.8, As: 24.4, Bs: 33.3, Cs: 35.6, Ds: 6.7, Fs: 0.0)
Course.create(name: 'CS 4504', description: 'Computer Organization' ,teachers: 'Feng', gpa:3.18, As: 50.0, Bs: 25.0, Cs: 25.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 4604', description: 'Int Data Base Mgt Sys' ,teachers: 'Prakash', gpa:2.67, As: 18.2, Bs: 43.2, Cs: 27.3, Ds: 11.4, Fs: 0.0)
Course.create(name: 'CS 4624', description: 'Multimedia/Hypertext' ,teachers: 'Fox', gpa:3.3, As: 41.8, Bs: 45.5, Cs: 12.7, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 4644', description: 'Creative Computing Studio' ,teachers: 'Cao, Harrison', gpa:3.72, As: 75.0, Bs: 25.0, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 4784', description: 'Human-Computer Interact Capstn' ,teachers: 'Tatar', gpa:3.58, As: 70.0, Bs: 30.0, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 4974', description: 'Independent Study' ,teachers: 'Balci, Dunlap, Fox, Gracanin, Prakash, Ribbens', gpa:3.85, As: 84.6, Bs: 15.4, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 5044', description: 'Object-Oriented Pgmming Java' ,teachers: 'Lewis', gpa:3.67, As: 65.7, Bs: 31.4, Cs: 2.9, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 5114', description: 'Theory of Algorithms' ,teachers: 'Shaffer', gpa:3.41, As: 57.1, Bs: 33.3, Cs: 4.8, Ds: 0.0, Fs: 4.8)
Course.create(name: 'CS 5510', description: 'Multiprocessor Programming' ,teachers: 'Lee', gpa:3.74, As: 71.4, Bs: 28.6, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 5560', description: 'Network and Computer Security' ,teachers: 'Lou', gpa:3.79, As: 78.9, Bs: 21.1, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 5704', description: 'Software Engineering' ,teachers: 'Balci, Kulczycki', gpa:3.67, As: 71.33, Bs: 28.68, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 5714', description: 'Usability Engineering' ,teachers: 'Perez-Quinonez', gpa:3.83, As: 96.0, Bs: 4.0, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 5744', description: 'Software Design and Quality' ,teachers: 'Pettit', gpa:3.33, As: 53.1, Bs: 37.5, Cs: 6.3, Ds: 0.0, Fs: 3.1)
Course.create(name: 'CS 5754', description: 'Virtual Environments' ,teachers: 'Bowman', gpa:3.7, As: 76.9, Bs: 23.1, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 5984', description: 'SS: Trust and Security' ,teachers: 'Chen', gpa:3.79, As: 78.6, Bs: 21.4, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 6204', description: 'TS:Adv Top Sys & Net Security' ,teachers: 'Yao', gpa:3.81, As: 78.9, Bs: 21.1, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 6604', description: 'TS:Digital Libraries' ,teachers: 'Fox', gpa:3.58, As: 52.9, Bs: 47.1, Cs: 0.0, Ds: 0.0, Fs: 0.0)
Course.create(name: 'CS 6824', description: 'TS:Hypergraph Algos & Apps' ,teachers: 'Murali', gpa:3.68, As: 80.0, Bs: 20.0, Cs: 0.0, Ds: 0.0, Fs: 0.0)



Course.all.each do |course| # Welcome note
  Note.create(course_id: course.id, title: "Welcome to #{course.name}", description: "#Welcome \n You can use  __markdown language__ to make notes and share with classmates\n\n1. You can also create links.  Click [here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) to see a markdown cheet sheet \n2. You can make awesome code samples like this:\n\n```python\ns = 'Python syntax highlighting'\nprint s\n```\n You can also make awesome tables:\n\n| Tables        | Are           | Cool  |\n| ------------- |:-------------:| -----:|\n| col 3 is      | right-aligned | $1600 |\n| col 2 is      | centered      |   $12 |\n| zebra stripes | are neat      |    $1 |")
end