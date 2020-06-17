![Imgur](https://i.imgur.com/0ZGrG2n.png) 
# 😸 CommuniCat 😸
## GA SEI 22 - Unit 4 Project
## URL: [https://communi-cat.herokuapp.com/](https://communi-cat.herokuapp.com/)
### Description: Welfare Tracking tool for Community Cats in HDBs

# Explanations of the technologies used
- Devise authentication
- Ruby on Rails
- Bootstrap CSS

# A couple paragraphs about the general approach you took

- Initial start was doing prework and conceptualising application
- After which came the selection of which technologies and frameworks to use, ultimately decided on ruby on rails

# Installation instructions for any dependencies
- bundle install
- rails db:reset
- Can be used without user account, but sign up with user account and selected estate will allow for adding of cats and updating of feed times
- Test account credentials:
	- usera@gmail.com / userb@gmail.com / userc@gmail.com 
	- Password for all accounts is ***password***
# Link to your user stories – who are your users, what do they want, and why?
-   I am a stray cat feeder that wants to ensure that all cats are appropriately fed
-   I am a stray cat feeder who wants to coordinate with other feeders on the feeding of cats
-   I am a cat welfare volunteer that wants to have data on the number of cats living in my area
-   I am a cat welfare volunteer that wants to monitor the health statuses of cats living in my area

# Link to your wireframes /user flow – sketches of major views / interfaces in your application
### Wireframes:
![Imgur](https://i.imgur.com/7xy28Ea.png)
### ERD
![Imgur](https://i.imgur.com/YnL9Ssc.png)

# App Walkthrough (Signed in User)

User starts at main screen, with option to view or add cats

![Imgur](https://i.imgur.com/FM5fjEz.png)

### Add:

![Imgur](https://i.imgur.com/TPU7Ogm.png)

### After adding a  cat to database, it will appear in the index. Cats shown here are based on user's selected Estate upon sign up, and cats added will be added to the user's estate.

### View:

![Imgur](https://i.imgur.com/Jd360aO.png)

### Selecting an individual cat will bring up the show cat page:

![Imgur](https://i.imgur.com/aXZiCL6.png)

### Clicking Update to add feeding log as well as comments and Remove to remove cat from database:

![Imgur](https://i.imgur.com/yjUjZcJ.png)

# Descriptions of any unsolved problems or major hurdles your team had to overcome
- Tried to use React Frameworks such as OnsenUI and Framework7 but unable to grasp the implementations within project timeframe
- Initial data model was scaled down from original design for ease of development
- Deciding on which technologies to use was challenging as each had its own merits and challenges

