# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.create(name: 'Data Structures and Software Design', description: 'Learn how to select, apply, and analyze the most appropriate data representations in your code and design high quality software that is easy to understand and modify.', price: 19.95, image: 'https://prod-discovery.edx-cdn.org/media/course/image/910f3ce1-1ffb-4bc1-99ff-86f8d5471851-b4e28cd06301.small.jpg')
Tag.create(title: 'computer-science')
Tag.create(title: 'software')
Tag.create(title: 'data-structures')
Tag.create(title: 'software-design')
CourseTag.create(course_id: 1, tag_id: 1)
CourseTag.create(course_id: 1, tag_id: 2)
CourseTag.create(course_id: 1, tag_id: 3)
CourseTag.create(course_id: 1, tag_id: 4)

Course.create(name: 'Software Engineering: Introduction', description: 'Learn how to apply engineering principles, such as Agile, to build a full-stack software system.', price: 9.99, image: 'https://prod-discovery.edx-cdn.org/media/course/image/7868fb19-176b-4d98-b1a0-4d1e2029fdb8-b302dd3a98d1.small.jpg')
Tag.create(title: 'software-engineering')
Tag.create(title: 'introduction')
CourseTag.create(course_id: 2, tag_id: 5)
CourseTag.create(course_id: 2, tag_id: 6)
CourseTag.create(course_id: 2, tag_id: 1)
CourseTag.create(course_id: 2, tag_id: 2)


Course.create(name: 'Software Development', description: 'You will Learn: How to develop programs that are well tested and easy to modify; To structure the development of large software systems using abstraction and decomposition; To quickly write and revise code using programming tools; How to do full-stack software development using an agile approach in a pair or team; Popular languages Java and Typescript, and the ability to quickly learn new ones', price: 25.25, image: 'https://www.edx.org/sites/default/files/mm_card.jpg')
CourseTag.create(course_id: 3, tag_id: 1)
CourseTag.create(course_id: 3, tag_id: 2)


Course.create(name: 'Upper-Intermediate English: Business and Technology', description: 'Take your English language skills to the next level.We will discuss technological innovations as you enhance your English vocabulary and grammar and learn how to write a business plan.', price: 9.00, image: 'https://prod-discovery.edx-cdn.org/media/course/image/b779ada8-5a68-45ba-abc8-12d3793cc417-fc5817bb73a5.small.jpg')
Tag.create(title: 'languajes')
Tag.create(title: 'english')
Tag.create(title: 'tech')
Tag.create(title: 'business')
CourseTag.create(course_id: 4, tag_id: 7)
CourseTag.create(course_id: 4, tag_id: 8)
CourseTag.create(course_id: 4, tag_id: 9)
CourseTag.create(course_id: 4, tag_id: 10)

Course.create(name: 'English Grammar and Style', description: 'Learn key concepts and strategies in grammar and style to help enhance your writing and confidently respond to the demand of high levels of literacy in the 21st century.', price: 14.99, image: 'https://prod-discovery.edx-cdn.org/media/course/image/c6ad9bb7-cafc-48c8-92e5-5f0900460e66-5ab5f1eef36d.small.jpg')
Tag.create(title: 'grammar')
CourseTag.create(course_id: 5, tag_id: 11)
CourseTag.create(course_id: 5, tag_id: 7)
CourseTag.create(course_id: 5, tag_id: 8)

Course.create(name: 'Ethics in Action', description: 'What do the world\'s great religious and secular philosophies have to say about ethical conduct? Which virtues are common across faiths? And what role do religious communities have to play in building a more just and sustainable world?', price: 5.50, image: 'https://prod-discovery.edx-cdn.org/media/course/image/6e418821-0e4c-4b16-94a3-18979ee49717-9b497ea5e1f5.small.jpg')
Tag.create(title: 'ethics')
CourseTag.create(course_id: 6, tag_id: 12)
CourseTag.create(course_id: 6, tag_id: 6)

Course.create(name: 'How to Write an Essay', description: 'An introduction to academic writing for English Language Learners, focusing on essay development, grammatical correctness, and self-editing.', price: 9.99, image: 'https://prod-discovery.edx-cdn.org/media/course/image/cb5cc730-9600-4909-a4b6-abef7a5e2647-8d65bb5f26cb.small.jpg')
Tag.create(title: 'culture')
Tag.create(title: 'essay')
Tag.create(title: 'how-to')
CourseTag.create(course_id: 7, tag_id: 13)
CourseTag.create(course_id: 7, tag_id: 14)
CourseTag.create(course_id: 7, tag_id: 15)


Course.create(name: 'Money, Markets, and Morals', description: 'Develop ethical reasoning skills as you consider the moral limits of markets.', price: 5.00, image: 'https://prod-discovery.edx-cdn.org/media/course/image/b3b88519-36a3-44cb-8e0c-25c92cd1c998-fdfee800f932.small.jpeg')
Tag.create(title: 'money')
Tag.create(title: 'moral')
CourseTag.create(course_id: 8, tag_id: 16)
CourseTag.create(course_id: 8, tag_id: 17)
CourseTag.create(course_id: 8, tag_id: 12)

Course.create(name: 'Cell Biology: Mitochondria', description: 'A human-centered approach to the fundamentals of cell biology with a focus on the power plants of the cell - mitochondria.', price: 11.99, image: 'https://prod-discovery.edx-cdn.org/media/course/image/9fd3a74d-cf0c-4d0b-b458-6536aeae9f00-f424bf30f845.small.jpg')
Tag.create(title: 'biology')
Tag.create(title: 'mitochondria')
Tag.create(title: 'fundamentals')
CourseTag.create(course_id: 9, tag_id: 18)
CourseTag.create(course_id: 9, tag_id: 19)
CourseTag.create(course_id: 9, tag_id: 20)