User.create(first_name: "Suhas", last_name: "Ramesh", username: "suhasr", email: "suhasr@yopmail.com", password: "Password@1", password_confirmation: "Password@1", profile_pic: nil)

User.create(first_name: "Rajnikant", last_name: "Gaikwad", username: "rajnikantg", email: "rajnikantg@yopmail.com", password: "Password@1", password_confirmation: "Password@1", profile_pic: nil)

User.create(first_name: "John", last_name: "Doe", username: "johnd", email: "johnd@yopmail.com", password: "Password@1", password_confirmation: "Password@1", profile_pic: nil)

User.create(first_name: "Amitabh", last_name: "Bacchan", username: "amitabhb", email: "amitabhb@yopmail.com", password: "Password@1", password_confirmation: "Password@1", profile_pic: nil)

User.create(first_name: "Narendra", last_name: "Modi", username: "namo", email: "namo@yopmail.com", password: "Password@1", password_confirmation: "Password@1", profile_pic: nil)

User.create(first_name: "Amit", last_name: "Shah", username: "amits", email: "amits@yopmail.com", password: "Password@1", password_confirmation: "Password@1", profile_pic: nil)


Post.create(title: "India", body: "India is a beautiful country", user: User.find_by_email("suhasr@yopmail.com"))
Post.create(title: "America", body: "America is known for silicon valley", user: User.find_by_email("suhasr@yopmail.com"))
Post.create(title: "Japan", body: "People are known for puntuality", user: User.find_by_email("suhasr@yopmail.com"))
Post.create(title: "Australia", body: "Known for Kangroos", user: User.find_by_email("suhasr@yopmail.com"))
Post.create(title: "srilanka", body: "Good neighbourer of India", user: User.find_by_email("namo@yopmail.com"))
Post.create(title: "Nepal", body: "Good for mountaineers", user: User.find_by_email("rajnikantg@yopmail.com"))
Post.create(title: "Singapore", body: "known for Clinliness", user: User.find_by_email("amitabhb@yopmail.com"))
Post.create(title: "Canada", body: "Good neighbourer of USA", user: User.find_by_email("amits@yopmail.com"))
Post.create(title: "Tibet", body: "Spiritual Hub", user: User.find_by_email("rajnikantg@yopmail.com"))
Post.create(title: "Antartica", body: "Known for polar bears", user: User.find_by_email("namo@yopmail.com"))
