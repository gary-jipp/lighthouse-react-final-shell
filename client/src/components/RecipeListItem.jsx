import React from 'react';

function RecipeListItem(props) {
const{name,description,instructions,image_url}=props
  return (
    <>
          <h2>{name}</h2>
          <p>{description}</p>
          <p>{instructions}</p>
          <img src={image_url} alt={name} />
          </>
  );
}

export default RecipeListItem;