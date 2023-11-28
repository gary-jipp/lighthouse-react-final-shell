import React from 'react';
import RecipeListItem from './RecipeListItem';
function RecipesList(props) {
  console.log("in recipe lsite",props.recipes)
  // const friends = props.friends || [];

  // const removeItem = function(id) {
  //   props.deleteItem(id);
  // };

  const list = props.recipes.map((recipe) => {
    return <RecipeListItem
      key={recipe.id}
      name={recipe.name}
      image={recipe.image_url}
      instructions={recipe.instructions}
      description={recipe.description}
       />;
  });

  return (
    <ul>{list}</ul>
  );
}

export default RecipesList;