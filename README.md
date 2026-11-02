# Rails Longest Word Game

A small Ruby on Rails exercise: the app shows 10 random letters and asks you to type the longest English word you can build from them.

## Context

Built in July 2020 (two commits, both on 2020-07-20) as an exercise during the Le Wagon web development bootcamp. It is a learning project, kept here as a record of that course.

## What it does

- `GET /new` picks 10 random letters (`a`-`z`, no repeats) and renders a form to submit a word.
- `POST /score` receives the word and the letters. The intended logic was to check the word against Le Wagon's dictionary API and verify it only uses the given letters.

The scoring step was never finished: `GamesController#score` calls `raise` before the dictionary lookup, the validation code sits outside the method, and `score.html.erb` is still the generated placeholder. The generated controller tests also point at route helpers that do not exist. Only the letter-grid page works.

## Stack

Ruby 2.6.6, Rails 6.0 (Webpacker, Turbolinks), SQLite for development (no models are used), and plain ERB views.

## Running it

It runs like any standard Rails 6 app: `bundle install`, `yarn install`, then `rails server`, and open `http://localhost:3000/new`. These commands come from the Rails defaults and have not been re-tested; Ruby 2.6 is end-of-life, so you may need an older toolchain.

## Status

Archived learning project, incomplete and not maintained.
