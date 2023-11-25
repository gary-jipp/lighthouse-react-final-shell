
# Tables:

### users:
primary_key,
first_name,
last_name,
email,
password(hashed)


### dog_breeds:
primary_key
breed_name


### generated_breeds:
primary_key
user_created
created_at: Time Stamp
name
description
generated_photo
min_size
max_size
min_weight
max_weight
good_with_children
good_with_other_dogs
shedding
grooming
drooling
coat_length
good_with_strangers
playfulness
protectiveness
trainability
energy
barking


### generated_photo_index:
primary_key
user_created
generation_id

### liked_generated_breeds
primary_key
breed_id
user_id
status: boolean
