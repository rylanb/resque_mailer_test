== Resque Mailer Test Project

This sample Rails project illustrates usage of Resque::Mailer.
It's also used for sanity checking when reporting or investigating
an error condition.

0. Edit app/mailers/notification.rb to set your local address for testing
1. Make sure Redis is running
2. Start Rails console
3. Send an email from the console:

    Notification.test.deliver

4. Start a Resque worker

    QUEUE=* rake environment resque:work

6. Tail the log file to see the delivery happen
