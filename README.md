
Ruby on Rails Developer test
1) Create a new application using Ruby 2.6, Rails 6.0, PostgreSQL 10+
2) Create an API controller which will accept an HTTP POST request containing a JSON string. See below for sample JSON.
3) Once the API is called from outside of the application persist request data in the database. Create two resources from the JSON: Ticket and Excavator. Tickets are the main object and Excavator will belong to the Ticket. Attributes that should be persisted to the database for both objects are described below. Use Rails attribute naming conventions and appropriate data types.
Ticket fields:
- RequestNumber
- SequenceNumber
- RequestType
- DateTimes->ResponseDueDateTime
- ServiceArea->PrimaryServiceAreaCode->SACode,
- ServiceArea->AdditionalServiceAreaCodes->SACode
- DigsiteInfo->WellKnownText (can be saved as plain text)
Excavator fields:
- Excavator->CompanyName
- Excavator->Address (full address including city, zip etc - can be one string) - Excavator->CrewOnSite
4) Add a regular controller with basic index and show HTML views for the tickets and also include excavator data.
5) DigsiteInfo->WellKnownText has polygon data which should be plotted on a map on the ticket show view.
Things I will be looking for and use to evaluate your skills: 1) Code cleanliness
2) Code structure
3) Code diligence
4) Test cases


### Run application
```sh 
$ docker-compose build
$ docker-compose run web bundle exec rake db:create
$ docker-compose run web bundle exec rake db:migrate
$ docker-compose up
```
### Run tests

```sh 
$ docker-compose run web bundle exec rspec spec
```
