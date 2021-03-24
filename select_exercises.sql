3. Explore the structure of the albums table.

    a. How many rows are in the albums table?
        31
        SELECT *
        FROM albums;
    b. How many unique artist names are in the albums table?
        23
        SELECT DISTINCT artist
        FROM albums;
    c. What is the primary key for the albums table?
        `id` 
        DESCRIBE albums;
    d. What is the oldest release date for any album in the albums table? What is the most recent release date?
        1967
        SELECT release_date
        FROM albums
        ORDER BY release_date;

        Can also do descending by doing 
        ORDER BY release_date DESC;

        Can also use to get the max and min value respectively
        select max(release_date)
        from albums;

        select min(release_date)
        from albums;

4. Write queries to find the following information:

    a. The name of all albums by Pink Floyd
        `The Dark Side of the Moon`, `The Wall`
        SELECT *
        FROM albums
        WHERE artist = "pink floyd";
    b. The year Sgt. Pepper\'s Lonely Hearts Club Band was released
        1967
        -SELECT *
        FROM albums
        WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";

        Also can do 
        -SELECT *
        FROM albums
        WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
    c. The genre for the album Nevermind
        Grunge, Alternative Rock
        -SELECT *
        FROM albums
        WHERE name = "Nevermind";
    d. Which albums were released in the 1990s
        The Bodyguard	1992
        Jagged Little Pill	1995
        Come On Over	1997
        Falling into You	1996
        Let's Talk About Love	1997
        Dangerous	1991
        The Immaculate Collection	1990
        Titanic: Music from the Motion Picture	1997
        Metallica	1991
        Nevermind	1991
        Supernatural	1999
        -SELECT
	        name,
	        release_date
        FROM albums
        WHERE release_date BETWEEN 1990 AND 1999;
    e. Which albums had less than 20 million certified sales
        Grease: The Original Soundtrack from the Motion Picture	14.4
        Bad	19.3
        Sgt. Pepper's Lonely Hearts Club Band	13.1
        Dirty Dancing	17.9
        Let's Talk About Love	19.3
        Dangerous	16.3
        The Immaculate Collection	19.4
        Abbey Road	14.4
        Born in the U.S.A.	19.6
        Brothers in Arms	17.7
        Titanic: Music from the Motion Picture	18.1
        Nevermind	16.7
        The Wall	17.6
        -SELECT
	        name,
	        sales
        FROM albums
        WHERE sales < 20;
    f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
        Sgt. Pepper's Lonely Hearts Club Band	Rock
        1	Rock
        Abbey Road	Rock
        Born in the U.S.A.	Rock
        Supernatural	Rock
        -SELECT
	        name,
	        genre
        FROM albums
        WHERE genre = 'rock';

        -The reason it did not include albums with the genre of "Hard rock" and "Progressive rock" is because the parameter of my query is
        only "Rock" and will only return within those parameters. The Genre will have to equal only "Rock not with any other parameters. 
        If we wanted to include the other "rock" Genre's we would have to change the parameters. Has to be an exact match, not looking at
        a piece, it's looking at the entire value.

        -Can also use to include all genres that have rock in the name
        SELECT 
	        name,
	        genre 
        FROM albums WHERE genre LIKE '%Rock%';