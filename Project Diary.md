# Stage 1:- Front End Implementation


**1. Esanki Thambawita**

| Date       | Challenges Faced                                                | How They Were Overcome                                              | 
|------------|-----------------------------------------------------------------|---------------------------------------------------------------------|
| 2024-04-01 | Issue in Figma design of home page                              | Found some incompatible design issues and redesigned some parts.    |
| 2024-04-06 | Had to make a part of the Contact.jsp and the Contact.css, Then had some issues with getting the right spaces for the map.                                                                                                      | I tried some css properties and figured out how to make the right size for the embedded map.     |
| 2024-04-07 | Came across an issue of spacing in the home page                | Checked the space measurements one by one and fixed the css code    |
| 2024-04- 08 | Spacing of the order confirmation page was problematic         | Reviewed the complete css code and changed the margin values        |


**2.TPR Fernando**

| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
| 2024-04-13 | PC got corrupted by a virus                                      | By using a bootable USB I clean installed windows |
| 2024-04-16 | Came across an issue when adding navbar and footer to all the pages.  | Fixed it by adding a div to seperate the html and fixing the css |
| 2024-04-26 | Side menu not extending down fully when scrolled in the admin panel  | Fixed it by making the position set to fixed attribute |
| 2024-05-01 | After user logs in nav bar profile icon changes messing up the spacing  |  |


**3. Sandali**

   
| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
| 2024-03-31 | Having issues ensuring the code accurately aligns with the designed Figma page. | Consistently referencing Figma designs and carefully adjusting CSS styles to match text, colors, and layout                                  |
|2024-04-02  | Had issues when implementing client-side validation.(In SignUp page)|  Use JavaScript to perform client-side validation for fields and display informative error messages to users if validation fails. |       
|2024-04-07  |Inconsistent whitespace in code(SignIn.css)                        | Manually reviewed and adjusted whitespace                          |
|2024-04-09  |Encountered some issues with NetBeans.                             |Decided to reinstall NetBeans to resolve the issues efficiently.    |
|2024-04-10  | Initially, faced challenges with picture sizes not displaying clearly (In developers.jsp)| Ensured clear picture display by setting width to 100% in the <img> tags.|

**4. Adheesha**

| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
| 2024-03-30 | Issues with using Figma to design the UI for Profile Page,Order History, Track Order, Change Password and My Returns. | Referred You Tube tutorials about figma                               
| 2024-04-05 | Issues with developing the Frontend part of Profile Page,Order History, Track Order, Change Password and My Returns.  | Over came them through online learning



**5. Oneli**

| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
| 2024-04-6  |Matching the Layout and Design of checkout page in figma and making it responsive                                            | studying UI/UX principles online, experimenting with different layouts, and seeking inspiration from existing websites or design resources and fixed it.                                   |
| 2024-04-7 |Making the cart functional in the checkout page                                         | Made the cart functional using JS and help of servlet
|2024-04-08 |Adjusting spacing of the checkout page,the old CSS page didnt respond and the responsiveness of the Contact page                               |created a new CSS page  to adjust the spacings using CSS, and modified the code of contact page to correct the responsiveness of the Contact.jsp and Contact.css

**6. Chanuka**


| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
| 2024-04-06 | Creating a gallery and allowing the user to select images        | Researched online to learn more, and had to use JS.
| 2024-04-07 | Adding a vertical line/s as planned in the UI design phase, since theres no vertical line tag. | Created a horizontal line and adjusted its width and height to give the illusion of a vertical line.
| 2023-04-07 | Creating the distinction between the product image/gallery on the left and product info on the right, in the Product Information page | Created 2 columns to divide the page into 2 sides





# Stage 2 :- Navigating a Repository Crisis: Safeguarding Project Integrity and Continuity

> **Team Leader - Esanki Thambawita**

**Date: April 11, 2024**

**Challenge:** On April 10th, a team member discovered a virus on their computer, which had unknowingly led to infected files being pushed to the old repository.

**How it was overcome:**

1.  **Immediate Response:** As the team leader, immediate action was taken. Security scans were conducted on all team computers, and project files were backed up to prevent further spread of the virus.
    
2.  **Repository Scans:** Utilizing GitHub actions and online tools such as VirusTotal, comprehensive scans were performed on the repository URL to identify and isolate any infected files.
    
3.  **Commit Reversion:** Commits made by the team member suspected of contributing infected files were reverted back to the point when the virus was suspected to have been introduced. This was done to mitigate any potential risks to the project's integrity.
    
4.  **Decision to Stop Using Old Repository:** Despite efforts to contain the situation,  I consulted with the team, and made the decision to discontinue the use of the old repository to ensure the project's security. A new repository was created as a safer alternative.
    
5.  **Transfer to New Repository:** All frontend implementation files were migrated to the new repository to continue project development in a secure environment.
    
6.  **Documentation of Evidence:** Screenshots of commits, pull requests, and branches from the old repository were taken as evidence of the team's daily contributions.
    
7.  **Deadline Extension:** To accommodate the transition to the new repository without compromising quality, the team leader extended the deadline for completing the frontend implementation. This allowed for thorough testing and uploading of files to the new repository without rushing or making mistakes.


**Here is the OneDrive link to access the PDF document containing screenshots from the old repository.**
[Evidence of the old repository](https://nsbm365-my.sharepoint.com/:b:/g/personal/elthambawita_students_nsbm_ac_lk/EXDFHKEbsvZCsUck5tQevzsB8YrGpzIHvURGTgwfVkGtFQ?e=VZnHar)


# Stage 3 :- Back End Implementation

**1. Esanki Thambawita**


| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
| 2024-04-16 | OrderConfirmation page needed an extra button for "submit feedback" but when the css was added, it did not work for that button.                                             | Found that the issue was other css styles being conflicted and so used inline css and fixed the issue.                 |
| 2024-04-17 | The database is not connecting to the netbeans                   | Found issue in code and fixed it.  |
| 2024-04-24 | Products page of the admin panel is connecting to the database but does not retrieve values from it and show it.                   | Tried making some changes in the code and eventually fixed the error.  |
| 2024-04-25 | Created the code to send the order confirmation email but it did not work. Code was right with no errors.|Found out that code is not right so I got an API key from mailersend and wrote the code and it was successful |
| 2024-04-26 | Found some difficulty storing the feedback rating in the database.| Figured out the database tables and connected it successfully.|
| 2024-04-28 | The products page of the admin panel was not organized enough for the categories| Made individual pages for each and every category and connected all of them using a horizontal menu|




**2. TPR Fernando**


| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
| 2024-04-20 | Time consumption in using an actual database to test the backend | Used a mock database instead for testing |
| 2024-04-28 | Difficulty in fetching different attrbutes from different tables in the database in the shoppingCart page | Used a complex sql query to fetch all the values using the product id as the foreign key|
| 2024-05-6 | MySQl servers randomly stopped working / Phpmyadmin stopped working | made a new data folder in mysql config files and replaced the old data folder by naming it data_old and copying the neccesary files to the new  data folder |


**3. Sandali**


| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
| 2024-04-13 | The database is not connecting to the netbeans                    | After some digging, I figured out what was wrong with the code and managed to fix it|
|2024-04-18  |Encountered a hurdle when trying to fetch the verification OTP from a website(twilio)|Attempted to implement email verification to obtain the verification code, but  it didn't work as expected. Recognizing the need for an alternative,  switched to using phone numbers. However, this transition came with its own set of challenges. I switch from Twilio to Vonage(website that we are using to get the OTP)for handling SMS services.With the help of a former graduate friend, succeeded in overcoming this challenge and Fixed the issues and successfully integrated the verification system|



**5. Oneli**


| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
|2024-04-13 |Implementation of backend of Contact page, and css didnt apply to the checkout page                           | Implemented by using JS and deleted the old css file and restored with new new css Contact1.css
|2024-04-18|form data wasnt being eneterd to the databse                        | reviewed the code and fixed it
| 2024-04-27| when the submit button was pressed wasnt being directed to OrderConfirmation.jsp page | did some research, reviewd the code and fixed the issue
|2024-04-30|Error was given trying to delte a customer record from the Customers.jsp in the Admin panel | So I reviewd the code and corrected it

**6. Chanuka**


| Date       | Challenges Faced                                                 | How They Were Overcome                                              | 
|------------|------------------------------------------------------------------|---------------------------------------------------------------------|
|            |                                                                  |  
