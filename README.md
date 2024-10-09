# Channel

[https://youtube.com/@DoCodeDo](https://youtube.com/@DoCodeDo)

Run 
`rails db:create db:migrate`

# Example

`rails c`


```ruby
cool = Tag.create name: 'Cool'
food = Tag.create name: 'Food'
light = Tag.create name: 'Light'

v1 = Venue.create name: 'venue 1', tags: [cool, food]
v2 = Venue.create name: 'venue 2', tags: [light]
v3 = Venue.create name: 'venue 3'

v1_e1 = Event.create name: 'event 1', venue: v1, tags: [light]
v1_e2 = Event.create name: 'event 2', venue: v1
v2_e1 = Event.create name: 'event 2', venue: v2
```

Search for all events that has tag light or venue has light

```ruby

tags = [Tag.find_by_name("Light")]

result = Event.with_tags(tags) # return event 1 and event 2


```
