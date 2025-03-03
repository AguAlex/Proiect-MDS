import { useEffect, useState } from "react";
import { fetchCities } from "./api";

function App() {
  const [cities, setCities] = useState([]);

  useEffect(() => {
    fetchCities()
      .then(setCities)
      .catch((error) => console.error("Error fetching cities:", error));
  }, []);

  return (
    <div>
      <h1>Lista orașelor din baza de date</h1>
      <ul>
        {cities.map((city) => (
          <li key={city.id}>{city.name}</li>
        ))}
      </ul>
    </div>
  );
}

export default App;
