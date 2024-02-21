1. Open the integrated terminal.

2. Change directories (cd) to the folder that will contain the project folder.

3. Run the following commands:

   dotnet new webapi -o DotNetCoreWebApi
   cd DotNetCoreWebApi
   dotnet add package Microsoft.EntityFrameworkCore.InMemory // Adds the NuGet packages
   code -r ../DotNetCoreWebApi

4. Trust the HTTPS development certificate by running the following command:

   dotnet dev-certs https --trust
   (Select Yes if you agree to trust the development certificate.)

5. Press Ctrl+F5 to run the app. In a browser, go to following URL: https://localhost:5001/swagger

6. he Swagger page /swagger/index.html is displayed. Select GET > Try it out > Execute. The page displays:

   The Curl command to test the WeatherForecast API.
   The URL to test the WeatherForecast API.
   The response code, body, and headers.
   A drop down list box with media types and the example value and schema.

   check the default URL: https://localhost:5001/WeatherForecast
   (you will see json data)

   \*changed the body of the method hence will get message like "Hello Dot Net Core Web Api."
