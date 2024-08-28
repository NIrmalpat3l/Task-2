# JPMC Task 2
Starter repo for task 2 of JPMC's Forage program

# Task 1 Recap
## Task 1: Interface with a stock price data feed
##Set-Up
Before you can tackle any software development task, you need to set up your
development environment. You can think of your local development environment
as a virtual workbench with all the tools necessary to work on your project.
To set up your dev environment, follow these instructions:
-  Install python 3 to your system - any recent version of python 3 will
work fine, though the most up-to-date version is advisable. If you need help
with this step, check out this excellent guide from real python:
<code>https://realpython.com/installing-python/</code>

-  Fork and clone the starter repo here:
<code>https://github.com/theforage/forage-jpmc-swe-task-1</code>
    -  IMPORTANT! Uncheck the “Copy the main branch only” box in the fork
    dialog on GitHub. A model answer has been provided in a separate branch
    from main.
    -  if you are unfamiliar with forking, cloning, or git in general, take
    a look at the first two chapters of the git book here:
    <code>https://git-scm.com/book/en/v2</code>

-  Open the project in your IDE of choice - if you don’t have a favourite
python IDE yet, take a look at Pycharm Community Edition. It’s a
well-designed IDE by Jetbrains packed with features and plugins, powerful
enough to work on the most complex projects, and entirely free.

-  Create a new virtual environment in the project root. Pycharm can do this
automatically for you using the “configure python interpreter” option in
settings.

-  Install all project dependencies. These are listed in the
<code>requirements.txt</code> file.

# Notes
-   Used automation script for <code>dateutil</code> env import

# Task 1: Making changes
When you’re in a work environment, you’ll usually receive tasks in the form
of engineering tickets. Here is an example of what this task looks like in
the form of an engineering ticket

### Purpose
We want to process the data feed of stock A and stock B’s price to enable us
to analyse when trading for the stock should occur.

### Acceptance Criteria
getDataPoint function should return correct tuple of stock name, bid_price,
ask_price and price. Note: price of a stock = average of bid and ask
getRatio function should return the ratio of the two stock prices main
function should output correct stock info, prices and ratio

# Notes
-   firewall issue: Port 8080 (exceptions adjustments needed)


# Task 2: Use JPMorgan Chase & Co. frameworks and tools
Typically, traders monitor stock prices and trading strategies by having data
displayed visually on their screens in chart form. Often these charts will be
accompanied by alerts that notify users when certain events occur or when
preset price thresholds are hit.

JPMorgan Chase created the Perspective tool over many years to allow users to
present and manipulate data feeds visually in web applications.

Perspective provides a set of flexible data transforms, such as pivots,
filters, and aggregations. It utilises bleeding-edge browser technology such as
Web Assembly and Apache Arrow and is unmatched in browser performance. It is
engineered for reliability and production-vetted on the JPMorgan Chase trading
floor. Now it’s available to the development community as an open source
library. If you want to explore that, a link is provided in the resources
section.

## Here is your task
In this task you'll focus on the following: 

-   Set up your local dev environment by downloading the necessary files, tools
and dependencies.
-   Fix the broken typescript files in repository to make the web application
output correctly
-   Generate a patch file of the changes you made.
-   Submit your work

# Task 2: Set up
Just like in the last task, you need to get your local development environment
up and running. Given that you completed task 1, you should already have python
installed and be familiar with git.

-   First, fork and clone the project repo:
<code>https://github.com/theforage/forage-jpmc-swe-task-2</code>
    -   Remember to uncheck the “Copy the main branch only” box in the fork
    dialog on GitHub. A model answer has been provided in a separate branch
    from main.
    -   Create a new virtual environment in the project root. Pycharm can do
    this automatically for you using the “configure python interpreter”
    option in settings.
    -   Install all project python  dependencies. These are listed in the
    requirements.txt file.
 
-   In this task, we will be working with javascript in addition to python.
Javascript has a handy package manager called npm, which handles package
tracking, discovery, installation, and removal. We will be using it to install
a series of javascript dependencies to your machine. If you already have access
to npm on your system, you can skip this step. Otherwise, you will need to
acquire it by following the instructions here (npm comes bundled with nodejs):
<code>https://nodejs.dev/en/learn/how-to-install-nodejs/</code>
    -   For this project to work, you must have node 18.10.0 installed on your
    machine. Ensure you have the correct version by running “node -v” in your
    terminal. If you do not, consider using nvm to install the correct version
    for you.
 
-   Install the necessary dependencies by running `npm install` from the project repo
 
-   Start the python server by running server3.py from the project repo like
so: <code>python datafeed/server3.py</code> (note it’s important you run it from the root of
the project repo)
 
-   Start the client by running `npm start` from the project repo

## Notes
Did not use automation script, but it should work as expected. I took time to also consider updates and exceptions where applicable

# Task 2: Now it's time to make changes!
When you’re in a work environment, you’ll usually receive tasks in the form of
engineering tickets. Here is an example of what this task looks like in the
form of an engineering ticket.

## Purpose:
The objective of this task will be for you to fix the client-side web
application so that it displays a graph that automatically updates as it gets
data from the server application (see Before and After images below).
Currently, the web application only gets data every time you click on the
'Start Streaming Data' button and does not aggregate duplicated data.

## Acceptance Criteria:
-   This ticket is done when the graph displayed in the client-side web
application is a continuously updating line graph whose y-axis is the stock’s
top_ask_price and the x-axis is the timestamp of the stock. The continuous
updates to the graph should be the result of continuous requests and responses
to and from the server for the stock data.
-   This ticket is done when the graph is also able to aggregate duplicated
data retrieved from the server
