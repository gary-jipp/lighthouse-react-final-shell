import {useState} from 'react';
import './App.css';
import useData from './hooks/useData';
import Status from './components/Status';
import DataList from './components/Dataist';

export default function App() {
  const [text, setText] = useState("");
  const {status, error, data, addItem, deleteItem} = useData();


  return (
    <div className="App">
      <h1>My Anything App</h1>
      <Status status={status} error={error} />

      <input value={text} onChange={e => setText(e.target.value)} ></input>
      <button onClick={() => addItem(text)}>Add</button>

      <DataList friends={data} deleteItem={deleteItem} />
    </div>
  );
}
