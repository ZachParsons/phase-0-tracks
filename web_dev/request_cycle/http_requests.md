9.1 How the Web Works
Release 0: View HTTP Requests
Find the Thing

2. What are some common HTTP status codes?
    status code types ordered by number range:
1xx Informational
2xx Success
3xx Redirection
4xx Client Error
5xx Server Error

    specific status codes mentioned for commonality:
301 Moved Permanently
302 Found
303 See Other
403 Forbidden
404 Not Found
451 Unavailable For Legal Reasons


3. What is the difference between a GET request and a POST request? When might each be used?
The GET method requests data from a specified resource, like html/css files from a server, think *read* from source.
The POST method submits data to be processed to a specified resource, like posting a message to a board/group/mailinglist, or extending a db thru an append operation, think *write* to source.

good table of comparisons: https://www.w3schools.com/Tags/ref_httpmethods.asp

4. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
An HTTP cookie remembers stateful info allowing the browser to be keep the user logged-in & it is used in session management, personalization, tracking.