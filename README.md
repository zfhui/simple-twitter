# Simple Twitter Search

This project implements a simple Twitter search with the [twitter gem](https://github.com/sferik/twitter), which uses Twitter's [Standard Search API](https://developer.twitter.com/en/docs/tweets/search/api-reference/get-search-tweets).

> Please note that Twitter’s search service and, by extension, the Search API is not meant to be an exhaustive source of Tweets. Not all Tweets will be indexed or made available via the search interface. - [Source](https://developer.twitter.com/en/docs/tweets/search/api-reference/get-search-tweets.html)

## Development 
### Setup Rails

```shell
# Install Ruby 2.5.0 via RVM
$ rvm install 2.5.0

# Install bundler
$ gem install bundler

# Install all gems
$ bundle install
```

### Setup Twitter Development App
Change the `.env.sample` file to `.env` and either keep the credentials (which were created for this experiment) or setup a new [Twitter App](https://apps.twitter.com/), create a new Access Token and replace those in the `.env` file. 

### CSS Framework
This project uses the light-weight weight, responsive CSS framework [Pure](https://purecss.io) for styling the very basic elements in the views. The framework is service via a CDN. 

### Run the App locally

```shell
$ rails s
```

Now visit [http://0.0.0.0:3000](http://0.0.0.0:3000) in your favourite browser. 

## Tests
### Run Tests

```shell
$ rspec .
```

## Deployment 

Continues integration via Travis CI is setup. It also deploys the code to Heroku automatically. 

Visit: [https://simple-twitter-search.herokuapp.com](https://simple-twitter-search.herokuapp.com)

## Statuses

|Tool  | Travis CI/CD  | Code Climate |
|------|---------------|--------------|
|**Status**|[![Build Status](https://travis-ci.org/zfhui/simple-twitter.svg?branch=master)](https://travis-ci.org/zfhui/simple-twitter)|[![Maintainability](https://api.codeclimate.com/v1/badges/a6c6555291a84a6ce7e5/maintainability)](https://codeclimate.com/github/zfhui/simple-twitter/maintainability)|

## 🌟 Ideas for improvements
* cache search query (e.g. via Redis), because currently each request can take quite long
* better error handeling (e.g. unauthorized, rate limit, server error, ...)
* better redering of retrieved tweets (handle, link to original tweet, user image, pagination...)