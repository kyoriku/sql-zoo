-- https://sqlzoo.net/wiki/Music_Tutorial

-- This tutorial introduces the notion of a join. The music has two tables: album and track in a one-to-many relationship.

-- album(asin, title, artist, price, release, label, rank)
-- track(album, dsk, posn, song)
-- More details about about the database (https://sqlzoo.net/wiki/Album)

-- How to do joins.
-- The phrase FROM album JOIN track ON album.asin=track.album represents the join of the tables album and track. This JOIN has one row for every track. In addition to the track fields (album, disk, posn and song) it includes the details of the corresponding album (title, artist ...).

-- 1. Find the title and artist who recorded the song 'Alison'.
SELECT title, artist
  FROM album JOIN track
         ON (album.asin=track.album)
 WHERE song = 'Alison'

-- 2. Which artist recorded the song 'Exodus'?
SELECT artist
  FROM album JOIN track
         ON (album.asin=track.album)
 WHERE song = 'Exodus'

-- 3. Show the song for each track on the album 'Blur'.
SELECT song
  FROM album JOIN track
         ON (album.asin=track.album)
 WHERE title = 'Blur'

--  We can use the aggregate functions and GROUP BY expressions on the joined table.
-- 4. For each album show the title and the total number of track.
SELECT title, COUNT(*)
  FROM album JOIN track ON (asin=album)
 GROUP BY title

-- 5. For each album show the title and the total number of tracks containing the word 'Heart' (albums with no such tracks need not be shown).
-- Use song LIKE '%Heart%' to find the songs that include the word Heart
SELECT title, COUNT(*)
  FROM album JOIN track ON (asin=album)
 WHERE song LIKE '%Heart%'
 GROUP BY title

-- 6. A "title track" is where the song is the same as the title. Find the title tracks.
SELECT song
  FROM album JOIN track ON (asin=album)
 WHERE song=title

-- 7. An "eponymous" album is one where the title is the same as the artist (for example the album 'Blur' by the band 'Blur'). Show the eponymous albums.
-- You only need to access one table in this example - so don't use the JOIN.
SELECT title
  FROM album
 WHERE title=artist

-- 8. Find the songs that appear on more than 2 albums. Include a count of the number of times each shows up.
-- The HAVING clause can be used outside of the GROUP BY.
SELECT song, COUNT(DISTINCT album) 
  FROM album JOIN track ON album.asin=track.album 
 GROUP BY song 
HAVING COUNT(distinct album)>2

-- 9. A "good value" album is one where the price per track is less than 50 pence. Find the good value album - show the title, the price and the number of tracks.
SELECT title, price, COUNT(*)
  FROM album JOIN track ON (asin=album)
 GROUP BY title, price
 HAVING price/COUNT(*) < 0.50

-- 10. Wagner's Ring cycle has an imposing 173 tracks, Bing Crosby clocks up 101 tracks.
-- List albums so that the album with the most tracks is first. Show the title and the number of tracks
-- Where two or more albums have the same number of tracks you should order alphabetically.
