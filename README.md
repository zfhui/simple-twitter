# README

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
$ bundler install
```

### Setup Twitter Development App
Change the `.env.sample` file to `.env` and either keep the credentials (which were created for this experiment) or setup a new [Twitter App](https://apps.twitter.com/), create a new Access Token and replace those in the `.env` file. 

### Run the App locally

```shell
$ rails s
```

Now visit [http://0.0.0.0:3000](http://0.0.0.0:3000) in your favourite browser. 