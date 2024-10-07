const movie = [
    {
      "MovieName": "The Great Adventure",
      "ActorName": "John Smith",
      "ReleaseDate": "2023-01-15"
    },
    {
      "MovieName": "Mystery in the Woods",
      "ActorName": "Emily Johnson",
      "ReleaseDate": "2022-09-28"
    },
    {
      "MovieName": "Love and Destiny",
      "ActorName": "Michael Brown",
      "ReleaseDate": "2023-05-02"
    },
    {
      "MovieName": "City of Shadows",
      "ActorName": "Sophia Williams",
      "ReleaseDate": "2023-03-12"
    },
    {
      "MovieName": "The Last Stand",
      "ActorName": "William Davis",
      "ReleaseDate": "2022-11-07"
    },
    {
      "MovieName": "Echoes of Time",
      "ActorName": "Olivia Wilson",
      "ReleaseDate": "2022-12-19"
    }
  ]
  
// 1. List the movie name along with the actor name of those movies released in the year 2022

console.log(
  movie
  .filter(x => new Date(x.ReleaseDate).getFullYear() == 2022)
  .map(x => ({MovieName :x.MovieName,ActorName : x.ActorName}))
);

// 2. List the movie names released in the year 2023 where the actor is William Davis.
console.log(
  movie
  .filter(x => x.ActorName == 'William Davis' && new Date (x.ReleaseDate).getFullYear() == 2023)
);

// 3. Retrieve the Actor name and release date of the movie “The Last Stand”
console.log(
  movie
  .filter(x => x.MovieName == "The Last Stand")
  .map(x=>({ActorName: x.ActorName, ReleaseDate: x.ReleaseDate}))
);

// 4. Check whether there is any movie in the list with actor name “John Doe”
console.log(
  movie.some(x => x.ActorName == "John Doe")
);

// 5. Display the count of movies where the actor name is "Sophia Williams"

let count =0;
const CountMovie = () => {
  movie.forEach(x => {
    if (x.ActorName == "Sophia Williams"){
      count = count + 1;
    }
  });
  return count;
};
const MovieCountNum = CountMovie();
console.log(`count of movies where the actor name is Sophia Williams ${MovieCountNum}`);


// 6. Insert an element
// 		{
//    			 "MovieName": "The Final Stage",
//     			"ActorName": "John Doe",
//    	 		"ReleaseDate": "2022-08-11"
//  		 }
// 	as last element

movie
.push({
  "MovieName": "The Final Stage",
  "ActorName": "John Doe",
  "ReleaseDate": "2022-08-11"
});

console.log(movie);

// 7. Check whether there exists any duplicate movie names present in the array

const movieNames = movie.map(x => x.MovieName); 
const uniqueNames = new Set();
let hasDuplicates = false;
for (const name of movieNames) {
    if (uniqueNames.has(name)) {
        hasDuplicates = true;
        break; 
    }
    uniqueNames.add(name);
}
if (hasDuplicates) {
    console.log('Duplicate movie names exist.');
} else {
    console.log('No duplicate movie names found.');
}


// 8. Create a new array starting from the movie "City of Shadows"
const cts = movie.slice(3)
console.log(cts)


// 9. List the distinct actor names in  array

console.log("List the distinct actor names in  array");
const actorNames = movie.map(x => x.ActorName); 
const distinctActorNames = [...new Set(actorNames)]; 

console.log('Distinct actor names:', distinctActorNames);


// 10. Insert an element
// 		{
//    			 "MovieName": "Rich & Poor",
//     			"ActorName": "Johnie Walker",
//    	 		"ReleaseDate": "2023-08-11"
//  		 }
// 	as next element to movie “Love and Destiny”

const newelement = 
     			{ "MovieName": "Rich & Poor",
      			"ActorName": "Johnie Walker",
     	 		"ReleaseDate": "2023-08-11"
   		    };
movie.splice(3,0,newelement);

console.log(movie)


// 11. Display the count of distinct actor names in array

const ActorsNames = movie.map(x => x.ActorName); 
const uniqueActorsNames = new Set();
let hasDuplicates_actors = 0;
for (const nameAC of ActorsNames) {
    if (uniqueActorsNames.has(nameAC)) {
        continue;
    }
    hasDuplicates_actors++;
    uniqueNames.add(nameAC);
}
console.log(`count of distinct actor names ${hasDuplicates_actors}`);


// 12. Remove the movie named  "The Last Stand"

console.log("Remove the movie named  The Last Stand");

const onlymovies = movie.map(x => x.MovieName);
console.log(onlymovies);

const saveIndex = onlymovies.indexOf("The Last Stand")
console.log(saveIndex);

movie.splice(saveIndex, 1)
console.log(movie)


// 13. Check whether all the movies are released after 2021 Dec 31

console.log(
  movie.every(x => x.ReleaseDate >  '2021-31-12')
);

// 14. Update movie named  "City of Shadows" ‘s release date as  "2023-03-13"
const onlylistofmovies = movie.map(x => x.MovieName);
console.log(onlylistofmovies);

const saveMovieIndex = onlylistofmovies.indexOf("City of Shadows");
console.log(saveMovieIndex);

console.log(movie[saveMovieIndex]);
movie[saveMovieIndex].ReleaseDate = "2023-03-13";
console.log(movie[saveMovieIndex]);

// 15. Create a new array of movie names whose movie name length is greater than 10.

const movielen10 = movie.filter(x => (x.MovieName).length > 10).map(x => x.MovieName);
console.log(movielen10);
