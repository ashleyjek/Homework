console.log("Hello from the console!");

// Your code here




fetch('https://api.openweathermap.org/data/2.5/weather?q=London,UK&appid=bcb83c4b54aee8418983c2aff3073b3b'
)
  .then(response => {
    if (response.ok) {
        return response.json();
    } else {
        throw new Error(response);
    }
  })
  .then(
    // log success message and parsed data in success callback
    // log failure message and error argument in failure callback
  );

