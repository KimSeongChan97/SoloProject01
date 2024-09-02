document.addEventListener("DOMContentLoaded", () => {
    const apiKey = '002b91a841229de1a2280f95fd145b6e'; // 실제 OpenWeatherMap API 키를 여기에 입력합니다.

    function fetchWeather(lat, lon) {
        const url = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&units=metric&appid=${apiKey}`;

        fetch(url)
            .then(response => response.json())
            .then(data => {
                document.getElementById('location').textContent = data.name;
                document.getElementById('temperature').textContent = `${data.main.temp}°C`;
                document.getElementById('description').textContent = data.weather[0].description;
            })
            .catch(error => console.error('Error fetching weather data:', error));
    }

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
            position => {
                const lat = position.coords.latitude;
                const lon = position.coords.longitude;
                fetchWeather(lat, lon);
            },
            error => {
                console.error('Error getting location:', error);
                document.getElementById('location').textContent = "Unable to retrieve location.";
            }
        );
    } else {
        document.getElementById('location').textContent = "Geolocation is not supported by this browser.";
    }
});
