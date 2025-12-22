import React from 'react';
import MovieCard from "./MovieCard";
import { useState,useEffect } from "react";

const Body = () => {
  const [listOfMovies, setListOfMovies] = useState([]);
  const [searchText, setSearchText] = useState("");
  const [filteredList, setFilteredList] = useState([]);

  useEffect(() => {
    fetchMovies();
  }, []);

  const fetchMovies = async () => {
    const data = await fetch(
      "https://api.themoviedb.org/3/movie/popular?api_key=c45a857c193f6302f2b5061c3b85e743&language=en-US&page=1"
    );

    const jsonObj = await data.json();
   

    setListOfMovies(jsonObj?.results); 

    const movies = jsonObj?.results || []; 
    
    setListOfMovies(movies);
    setFilteredList(movies);
  };
   const PopularClick = async () => {
    await fetchMovies(); // just refetch popular movies
    setFilteredList([]); // reset search results if any
    setSearchText("");   // clear search box
  };

  return (    
    <main>

      <div className="filter-bar">
        <button onClick={PopularClick}>Popular</button>
      </div>

      <div className="search-bar">
        <input
          type="text"
          placeholder="Search for a movie..."
         
          onChange={(e) => setSearchText(e.target.value)}
        />
        <button
          onClick={() => {
            const filtered = listOfMovies.filter((movie) =>
              movie.title.toLowerCase().includes(searchText.toLowerCase())
            );
            setFilteredList(filtered);
          }}
        >
          Search
        </button>
      </div>

      <h2>Popular Movies</h2>

      <div className="movie-grid">
        {(filteredList.length > 0 ? filteredList : listOfMovies).map((movie) => (
          <MovieCard
            key={movie.id}
            image={`https://image.tmdb.org/t/p/w500${movie?.poster_path}`}
            title={movie?.title}
            rating={movie?.vote_average}
          />
        ))}
      </div>
    </main>
  );
};


export default Body;
