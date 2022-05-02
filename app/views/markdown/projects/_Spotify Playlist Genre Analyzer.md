#

This was my final project for CMSC320: Data Science.
A detailed writeup can be found [here, on a GitHub pages website](https://olincb.github.io/spotify-playlist-analysis/).

I love listening to music.
I also love making playlists.
Typically, when I make a playlist, I try to make the playlist as cohesive as possible.
In other words, I want all the songs to sound fairly similar, or have a similar feel or vibe.
On the other hand, I strive to have an eclectic taste in music.
In other words, I want to listen to a wide breadth of music, and to continue broading my musical horizons.

My goal with this project was to find a way to score a Spotify playlist on a scale from eclectic to cohesive.
Along the way, however, I guided the reader through the data science pipeline, hopefully leaving the reader with a better understanding of something, whether that be the data science pipeline at large, a specific data science tool, or musical genres.
The webpage has links to various data sources, libraries, and miscellaneous knowledge sources throughout, so the reader can delve deeper on any topic if they choose.

## Methodology

The project starts with gathering data about an assortment of playlists from the Spotify API.
It then visualizes the collected data using PyPlot, making frequecny diagrams of genres in playlists.
Then, a set of numerical features are extracted from the data (e.g. number of distinct genres, number of tracks, etc.).
