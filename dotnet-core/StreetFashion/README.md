1. Create a Razor application

   > RFashion>RFashion.Portal>dotnet new Razor

2. Run the application and check on browser

3. Add sln file into the project such that we can add other projects into it
   3.1 dotnet new sln
   3.2 Add project into tht sln file

   > RFashion>dotnet sln add RFashion.Portal/RFashion.Portal.csproj

   <!-- Output: dotnet sln add RFashion.Portal/RFashion.Portal.csproj
   Project `RFashion.Portal\RFashion.Portal.csproj` added to the solution. -->

4. Adding another class library for Core : Project will hold all the property files

   > RFashion> dotnet new classlib -o RFashion.Core
   > RFashion>dotnet sln add RFashion.Core/RFashion.Core.csproj

   <!-- Output: dotnet sln add RFashion.Core/RFashion.Core.csproj
   Project `RFashion.Core\RFashion.Core.csproj` added to the solution. -->

5. Adding another class library for Service : Project will hold the all the services file

   > RFashion> dotnet new classlib -o RFashion.Service
   > RFashion>dotnet sln add RFashion.Service/RFashion.Service.csproj

      <!-- Output: dotnet sln add RFashion.Service/RFashion.Service.csproj
      Project `RFashion.Service\RFashion.Service.csproj` added to the solution. -->
