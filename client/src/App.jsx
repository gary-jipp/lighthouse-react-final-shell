import {useState} from 'react';
import DataList from './components/DataList';
import Status from './components/Status';
import RecipesList from './components/RecipesList';
import useApplicationData from './hooks/useApplicationData';
import './App.css';


export default function App() {
  // const {recipes,categories, error, addItem, deleteItem, fetchItems} = useApplicationData();
  const {recipes,categories, error,fetchItems} = useApplicationData();
console.log("in main",recipes);
//console.log(categories);
  return (
    <div className="App">
 <RecipesList recipes={Object.values(recipes)}/>
     
    </div>
  );
}

