import axios from "axios";
import {useEffect, useState} from "react";

const useData = function() {
  const [error, setError] = useState();
  const [status, setStatus] = useState({});
  const [data, setData] = useState([]);

  // Using 2 Seperate Fetches
  useEffect(() => {
    axios.get('/api/status')
      .then((res) => {
        setStatus(res.data);
      })
      .catch((err) => {
        setStatus({error: err.message});
      });
  }, []);

  useEffect(() => {
    axios.get('/api/data')
      .then((res) => {
        setData(res.data);
      })
      .catch((err) => {
        setError(err.message);
      });
  }, []);

  // Better way to do this, both at once!
  useEffect(() => {
    Promise.all([axios.get('/api/status'), axios.get('/api/data')])
      .then(all => {
        setStatus(all[0].data);
        setData(all[1].data);
      })
      .catch(err => {
        console.log(err.message);
        setError(err.message);
      });

  }, []);


  const addItem = function(name) {
    axios.post("/api/data", {name})
      .then(res => {
        console.log(res.data);
        setData([res.data, ...data]);
      })
      .catch((err) => {
        setError(err.message);
      });
  };

  const deleteItem = function(id) {
    axios.delete(`/api/data/${id}`)
      .then(res => {
        setData(data.filter(item => item.id !== id));
      })
      .catch((err) => {
        setError(err.message);
      });

    setData(data.filter(item => item.id !== id));
  };

  return {status, error, data, addItem, deleteItem};
};

export default useData;