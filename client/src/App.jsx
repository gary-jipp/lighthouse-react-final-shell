import {useState} from 'react';
import './App.css';
import Status from './components/Status';
import useApplicationData from './hooks/useApplicationData';

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
