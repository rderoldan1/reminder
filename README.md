Reminder
========

This is a simple gem that will throw a Growl notification every certain time. That way, you'll be reminded of something.

For example, I normally make a lot of stuff before I commit my changes, which I know is really bad (and it's what pushed me to write this), so I just set a reminder to commit every 10 minutes.

This is how it looks like

![Please Commit](http://s3.amazonaws.com/hock-personal-bucket/commit_please.png "Please Commit")

That way, the Growl notification will notice (bother) me and remind (make) me commit.

You'll need Growl Notify to use this gem. Download it [here](http://growl.info)

Options
=======

**Reminder** has some cool options (thanks to [Choise](https://github.com/defunkt/choice)) so you can easily set up your notifications and start working.

To use **Reminder**, just write

    $ reminder -m 'Keep Growling Growling ...' -t 10

and you'll get this every 10 _**minutes**_:

![Keep Rolling](http://s3.amazonaws.com/hock-personal-bucket/keep_rolling.png "Keep Rolling")
    

To change the notification title, just add the ` -T ` option.


All **Reminder**'s options are:

    Usage: reminder [-mtT]

    Notification Options:
        -m, --message=MESSAGE            The notification message...
        -T, --title=TITLE                The title of the notification...
        -t, --time=TIME                  Number of minutes...

    Other options: 
        -v, --version                    Show version

You can list all options at any time by running `reminder --help`

TODO
====

* Find a better way to run the notification.
* Clean up code. May be a little messy.
* Add a `--for` option (remind me every 10 minutes for 3 hours)
* Add documentation inside the source code.


Issues
======

Please use the Github Issues Tracker above.


Thank you for reading :-)
-------------------------
Released under the MIT License

Nicolás Hock Isaza. nhocki@gmail.com. Zinergia
   