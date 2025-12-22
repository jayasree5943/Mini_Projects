import React from 'react';
const MovieCard = (props) => {
  return (
    <div className="movie-card">
      <img src={props.image} alt={props.title} />
      <div className="movie-title">{props.title}</div>
      <div className="rating">Rating: {props.rating}</div>
    </div>
  );
};
export default MovieCard;
