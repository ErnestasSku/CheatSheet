# A quick refresh of string operations in Python

import string

Message = "Hello, {}"

print( Message.format("name") )

print( "This is a {} message".format("blank"))

FancyString = "This is a {type} string. It has many {value}."

print(FancyString.format(type = "long", value = "meanings" ))

template = string.Template("${person} was seen ${action} in ${year}")

Dictionary = [
    dict(person = "Franz Kafka", action = "France", year = 1892),
    dict(person = "Carl con Clauzewitch", action = "in battle of Borodini ", year = 1812),
    dict(person = "Antoine-Henri Jomini", action = "taking part in Battle of Ulm", year = 1805)   
]

for i in Dictionary:
    print(template.substitute(i))