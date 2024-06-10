import {useState} from 'react';
<<<<<<< HEAD
=======
import DataList from './components/DataList';
import Status from './components/Status';
import useApplicationData from './hooks/useApplicationData';
>>>>>>> 34ca8694fda63a1e4a4d78cae2b957e09f934de2
import './App.css';
import useData from './hooks/useData';
import Status from './components/Status';
import DataList from './components/Dataist';

export default function App() {
  const [text, setText] = useState("");
  const {status, error, data, addItem, deleteItem, fetchItems} = useApplicationData();


  return (
    <div className="App">
      <h1>Anything App</h1>
      <Status status={status} error={error} />

      <input value={text} onChange={e => setText(e.target.value)} ></input>
      <button onClick={() => addItem(text)}>Add</button>

      <DataList friends={data} deleteItem={deleteItem} />
    </div>
  );
}
