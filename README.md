# Rails Longest Word Game

A small, unfinished Ruby on Rails exercise. It was meant to show 10 random letters and ask you to type the longest English word you can build from them. It does not run as committed (see [What it does](#what-it-does)).

## Context

Built in July 2020 (two commits, both on 2020-07-20) as an exercise during the Le Wagon web development bootcamp. It is a learning project, kept here as a record of that course.

## What it does

- `GET /new` was meant to pick 10 random letters (`a`-`z`, no repeats) and render a form to submit a word.
- `POST /score` receives the word and the letters. The intended logic was to check the word against Le Wagon's dictionary API and verify it only uses the given letters.

The app does not run as committed. The validation block in `app/controllers/games_controller.rb` sits in the class body, outside `score`, and is not valid Ruby (`return` in a class body and a chained `== ... !=` comparison), so `ruby -c` rejects the file. Rails therefore cannot load `GamesController`, and both `/new` and `/score` raise an error. Beyond that, `#score` calls `raise` before the dictionary lookup, `score.html.erb` is still the generated placeholder, and the generated controller tests point at route helpers that do not exist.

## Stack

Ruby 2.6.6, Rails 6.0 (Webpacker, Turbolinks), SQLite for development (no models are used), and plain ERB views.

## Running it

The setup is a standard Rails 6 app (`bundle install`, `yarn install`, `rails server`). Because of the syntax error above, every page served by `GamesController`, including `/new`, raises an error until the stray block is removed or moved into `score`. These commands come from the Rails defaults and have not been re-tested; Ruby 2.6 is end-of-life, so you may need an older toolchain.

## Status

Archived learning project, incomplete and not maintained.
