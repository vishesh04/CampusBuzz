CampusBuzz
==========

A online goods bartering website written in Java for Google app engine.

A demo can be found at http://campus-buzz.appspot.com.

Instructions for admin
The apps allows creation of admin users,which has extra rights and can create other admins too.

Test admins

Email - hardcodetest1@gmail.com
Password - hardcode

Email - hardcodetest2@gmail.com
Password - hardcode

When the site sees that it doesn't have these Test admins in datastore,index page provides a UI to create these users.So please visit the index page and create these users after deployment to new app-id on appspot.

Login -

The site provide two ways to login -

1. From the userid and password created at signup.
2. From google login using the appspot login service.

Please note that ,if the user logins with a google account for the first time,the app creates a user in the datastore(signup as a google user).The users signed up this way(from the google account) can not be admins and can not change their password(since they are using google to login).

Logs

app creates logs for all the datastore write operations in the appspot instance where the app is deployed.These logs are created with the info level.
To view these application created logs,visit the logs section in the appspot instance,use filter Logs with minimum severity:info to hide other logs generated by appspot.

Deployment to new appspot instance

To deploy the app to new instance,import the project Hardcode in eclipse.

If the build path errors are there ,add the libraries lucene-core-2.9.1.jar & lucene-snowball-2.9.1.jar, from /war/web-inf/lib folder, to the build path.These are the libraries for Search support on datastore fields.

Advanced Search will only work after Google Appengine does indexing of query types. This might take some time to happen in some cases.(max 1-2 days). This is one time only after deployment.

Configure the app-id in the project properties and deploy.

Functional details:

Buyer/Seller Communication

The site provides two type of buyer/seller communication

1.Message - messages are stored in datastore and are queried based on view requirements.

2.Chat - The chat is implemented with the channel api. The online/offline status of user is tracked in a datastore Entity status.When the user comes online ,the channel on client side post a message to /chat/connected with connected user's id.This updates the status in datastore.similarly the offline event is handled.
