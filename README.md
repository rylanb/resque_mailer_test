Resque Mailer Test Project
==========================

This sample Rails project illustrates usage of Resque::Mailer. It's also used for sanity checking when reporting or investigating an error condition.

Edit app/mailers/notifier.rb to set your local address for testing and make sure Redis is running. Then, start the Rails console. In Rails console, use the following command to queue a sample email:

    Notifier.test.deliver

Next, start a Resque worker and tail the development log to see the delivery happen:

    QUEUE=* rake environment resque:work
