import axios from "axios";
import {useCallback, useEffect, useState} from "react";

const useApplicationData = function() {
  const [error, setError] = useState();
  const [status, setStatus] = useState({});
  const [data, setData] = useState([]);

  const fetchItems = useCallback(() => {
    Promise.all([axios.get('/api/status'), axios.get('/api/items')])
      .then(all => {
        setStatus(all[0].data);
        setData(all[1].data);
      })
      .catch(err => {
        console.log(err.message);
        setError(err.message);
      });
  }, []);


  // Fetch data on first render
  useEffect(() => {
    fetchItems();
  }, []);


  const addItem = function(name) {
    axios.post("/api/items", {name})
      .then(res => {
        console.log(res.data);
        setData([res.data, ...data]);
      })
      .catch((err) => {
        setError(err.message);
      });
  };

  const deleteItem = function(id) {
    axios.delete(`/api/items/${id}`)
      .then(res => {
        setData(data.filter(item => item.id !== id));
      })
      .catch((err) => {
        setError(err.message);
      });

    setData(data.filter(item => item.id !== id));
  };

  return {status, error, data, addItem, deleteItem, fetchItems};
};

export default useApplicationData;