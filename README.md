# FanLife

FanLife is a social media app designed to cater to all the various fandoms out there, the communities made out of fans of popular shows and movie franhcises. 

This app will allow fans to create their own profiles and comment on thier favorite fandoms. In addition to commenting, users can create thier own fandom pages, and then edit them freely. 

# Approach Taken

I started out by creating a database for users to add, edit, and delete fandoms. After this, I developed the database for users and developed the portal for new users to create an account, complete with their own bio section, and the ability to edit and delete thier users. Then, I created a sessions model to allow users to login and logout. I also created an authorization section, so only users who have logged in would be able to see all the features.

After this, I developed a fandoms_user database, that allowed users to add fandoms to a 'favorites' list, and then remove them if they so wished. Following this, I added a comments database, which enables users to add comments or notes to a fandom page. It also shows the name of the user that wrote the comment. Finally, I added a section to the user page that allows them to add a profile picture.

# Next Steps
I've layed the groundwork for a social media app, so now the next steps will be to make this app genuinely  social. The next step will be to allow users to see other users who have favorited the same fandoms they have, and then be able to message them. 

My ultimate vision for this app is for it to be a communtiy building app: a way for people with a similar interest to come together and build friendships with one another.

# Technology Used

* Ruby on Rails
* Bootstrap
* Amazon Web Services/S3
* Postgresql

# Unsolved Problems
* How to Message other users through the app.
* How to see who else has favorited the fandoms you have.
