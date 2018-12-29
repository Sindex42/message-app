Messaging App Challenge
=============

## Makers Academy - Week 4 Challenge

A web app that lets the user enter a message and submit it. The user should then see a history of messages already submitted in reverse chronological order with attached timestamps.

```
As a user
So that I can share my thoughts
I would like to write a message and submit it

As a user
So that I can see what I've been saying
I would like to see a history of previous messages

As user
So that I can remember when I made a post
I would like to see the time at which the message was posted

As a user
So that I can follow a sequence of messages
I would like to see the list of messages with the newest ones on the top

As a user
So that I can have an overview of the entire message history
I would like to only see the first 20 characters of any individual message

As a user 
So that I can read the complete text of a message
I would like to be able to click on a particular message and see the whole thing

As a user
So that I can change a message in the history
I would like to be able to edit a particular message

As a user
So that I can forget what I've written
I would like to be able to delete a message from the history
```

## Getting started

1. Clone this repo `git clone git@github.com:Sindex42/message-app.git`
2. Change directory `cd message-app`
3. Run bundle to install dependencies `bundle install`

### Setting up the databases

1. Install postgresql `brew install postgres`
2. Open up postgresql from the command line `psql`
3. Create the development database `CREATE DATABASE message_app_development;`
4. Create the test database `CREATE DATABASE message_app_test;`
5. Set up the tables `db:auto_migrate`

### Running tests

1. Run rackup to start the server `rackup`
2. Open up a browser and navigate to the following page [http://localhost:9292](http://localhost:9292)
3. Run the tests with `rspec` in the project root folder


## Usage

### Submitting a message

1. Enter your message in the prompted field and click 'Submit'
2. Repeat as neccessary
3. Bask in the history of your previous ramblings

### Editing a message 

1. Click on a partial message link
2. Edit the message
3. Click the 'Edit' button 

### Deleting a message

1. Click on a partial message link
2. Click the 'Delete' button 
