using System;
using Microsoft.AspNetCore.Hosting;


var builder = WebApplication.CreateBuilder();

// (new WebApplicationOptions
// {
//     //  EnvironmentName = Environments.Development
//    // EnvironmentName = "MO"

// });

var env = Environment.GetEnvironmentVariable("SAMPLEAPP_ASPNETCORE_ENVIRONMENT_KEY");

DotNetEnv.Env.Load();

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Configuration.AddJsonFile($"appsettings.{env}.json");

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}


app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
