
# Dog Blender (final name pending)

## Concept

A website that takes input from the user to generate a potential mixed breed. The program with use API access to a database of dogs and traits, use a LLM to generate a possible profile of the new breed, and use an LLM image generator to create an image of the potential breed

## User Stories

- User can login
- User can see results they have liked in the past
  - selecting a previously liked photo will pull up a photo and detailed description of breed

- User can select to create new breed
- User can pick two breeds from list and add them to the blend
  - selecting a breed will bring up a list of the breeds base characteristic 
  - user can add the breed to their list or pass and return to select a new breed
  - user can press generate button
    - pressing button will send breed base characteristics to LLM api to comile a possiblenew breed characteristic
    - pressing button will send breed names to LLM photo generator to produce a possible new breed image
  - User will get generated photo, generated new breed discrition text, generated new characteritics


- Stretch: User can preform the same generation but instead of picking breeds they can select desired end traits. Will fetch from API top two breeds and generate new possible breed

