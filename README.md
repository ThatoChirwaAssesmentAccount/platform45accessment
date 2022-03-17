# platform45accessment

A new Flutter project.

## Getting Started

This project is a is a flutter project for fetching data through an api and displaying it as a list view . 
The use case are as follows:
-get json data through an API call from https://rapidapi.com/community/api/open-weather-map and display the information in a list views
-pass data to the next page , using the selected list item as an index point , to populate all the remaining details of converted string object.

project Structure
--
Domian Layer - (Business logic) consist of :
--
 -entity level which is independent from external framework(It consists of the         classed object that will support the Use case)
    --city class
    --daily forecast class
    --List element class 
    --temperature class
 -Usercase houses the logic for how the feature is suppose to behave 
   --gets daily forecast 

Data Laya - (Works with Data manupluation) consists of:
--
-Data Source this handles the funcinality for interacting with internal or external sourced of data
 --get remote data 
 -Models they extend the entity class and convert external data source ( Json in our case could be XML ) into Strings that will be able to display in the list view
  --city subclass 
  --Daily forecast class
  Presentation Layer- ( handles the states and views) consits of:
  --
  DailyTemprature Getx generater file ( handles the state , view and control of the Ui)
  --daily temperature controller 
  --daily temperature binding 
  --daily temperature page
  
  Packages to be used during the project
  -- http , for calling api 
  --mockito for doing mock tests whiile emulating the how our Api will behave
  --get for GetX manipulation
  --equatable to implement value based equality without needing to explicitly override == and hashCode
 -- Purify your Dart code using efficient immutable data structures, monads, lenses and other FP tools 
 
 
  
  
 
  
