---
title: Deploy an app on Clever Cloud with its new CLI
author: Alexandre Berthaud
tags: tutorial, hosting
description: Learn how to deploy an app on Clever Cloud without leaving your terminal
---

Today we are going to learn how to deploy an app on Clever Cloud without leaving
the terminal!

## What's Clever Cloud?

Clever Cloud is a PaaS, much like Heroku (except it's cheaper and faster).
Simply put: you push your app on Clever Cloud, and it runs. You don't have to
worry about anything, Clever Cloud is in charge of keeping your app up and
running, fast and available to everyone.

## The CLI: clever-tools

Clever-tools was introduced three weeks ago (and today's release adds some pretty useful features and fixes). It's a tool which allows you to manage
your apps and addons from your terminal. Pretty cool, right?

You can learn more about it in [the offical announcement post](https://www.clever-cloud.com/blog/features/2015/09/21/Public-API-available/).

## First things first

To get going with clever-tools, you will need 2 things: a Clever Cloud account
(obviously) and npm.

To create a Clever Cloud account, head over here:
[https://www.clever-cloud.com/en/](https://www.clever-cloud.com/en/)

Then don't forget to add your ssh key to your Clever Cloud account.

For the rest, I think you can manage. If you need help, please say so in the
comments down below. :)

When you have those 2 things, install clever-tools:

    $ npm install -g clever-tools

Note: to install npm packages in your home and to avoid using root, set up a
prefix in [the ~/.npmrc file](https://docs.npmjs.com/files/npmrc).

## The interesting part

We are going to test this with a simple demo app. Open a terminal in your usual
development directory and read on.

Login to your Clever Cloud account:

    $ clever login

This will open a new tab in your browser, asking you to authorize clever-tools.
After doing so, your OAuth tokens will be displayed. Meanwhile, clever-tools prompted
you to enter your CLI token, copy/paste it; then do the same with the secret.

You should now see `/home/you/.config/clever-cloud has been updated`.

You're all set! Now, clone this simple demo app:

    $ git clone git@github.com:CleverCloud/demo-nodejs-mongodb.git
    $ cd demo-nodejs-mongodb

Create the app on Clever Cloud and give it a domain name:

    $ clever create -t node "Test application"
    $ clever domain add my-test-app.cleverapps.io # Use something else :)

We could just deploy it right now, but this app needs a MongoDB database. Let's
add one:

    $ clever addon create mongodb-addon "Test database1" --plan S

That's it, it's ready to run:

    $ clever deploy

You will see the logs of your new app starting up and in less than a minute, it
will be available at the address you set up!

![Deploying an app](/files/clever-tools-deploy.png)
