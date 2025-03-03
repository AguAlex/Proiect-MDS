const API_URL = "http://localhost:3000"; // Adresa backend-ului Rails

export const fetchCities = async () => {
  const response = await fetch(`${API_URL}/cities`);
  if (!response.ok) {
    throw new Error("Failed to fetch cities");
  }
  return response.json();
};
