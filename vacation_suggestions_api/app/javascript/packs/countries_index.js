import React, { useEffect, useState } from "react";
import ReactDOM from "react-dom";

const CountriesList = () => {
  const [countries, setCountries] = useState([]);

  useEffect(() => {
    fetch("/countries") // Fetch API-ul existent
      .then((response) => response.json())
      .then((data) => setCountries(data))
      .catch((error) => console.error("Error loading countries:", error));
  }, []);

  return (
    <div>
      <h2>List of Countries</h2>
      <ul>
        {countries.map((country) => (
          <li key={country.id}>{country.name}</li>
        ))}
      </ul>
    </div>
  );
};

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<CountriesList />, document.getElementById("react-root"));
});
