
require('dotenv').config();

const OpenAI = require('openai');

const openai = new OpenAI({ apiKey: process.env.OPENAI_API_KEY });

const dogOne ={
  "good_with_children": 5,
  "good_with_other_dogs": 5,
  "shedding": 2,
  "grooming": 1,
  "drooling": 1,
  "coat_length": 1,
  "good_with_strangers": 3,
  "playfulness": 4,
  "protectiveness": 3,
  "trainability": 3,
  "energy": 4,
  "barking": 1,
  "max_height_male": 22,
  "max_height_female": 22,
  "max_weight_male": 40,
  "max_weight_female": 40,
  "min_height_male": 19,
  "min_height_female": 19,
  "min_weight_male": 25,
  "min_weight_female": 25,
  "name": "Whippet"
}
 const dogTwo = {
  "good_with_children": 5,
  "good_with_other_dogs": 4,
  "shedding": 4,
  "grooming": 2,
  "drooling": 1,
  "coat_length": 1,
  "good_with_strangers": 5,
  "playfulness": 5,
  "protectiveness": 3,
  "trainability": 4,
  "energy": 3,
  "barking": 1,
  "max_height_male": 13,
  "max_height_female": 13,
  "max_weight_male": 18,
  "max_weight_female": 18,
  "min_height_male": 10,
  "min_height_female": 10,
  "min_weight_male": 14,
  "min_weight_female": 14,
  "name": "Pug"
}



async function muttyAssistent(dogOne, dogTwo) {
  
  const assistant = { id: "asst_0lf98H0dis6xlTyKeMEwTJj4" };
  
  const dogString = JSON.stringify(dogOne) + JSON.stringify(dogTwo);

  const thread = await openai.beta.threads.create();
  const message = await openai.beta.threads.messages.create(thread.id, {
    role: "user",
    content: dogString,
  });

  const interval = 1000;

  const run = await openai.beta.threads.runs.create(thread.id, {
    assistant_id: assistant.id,
  });

  const messages = await openai.beta.threads.messages.list(thread.id);

  let timeout = 30000;
  let timeElapsed = 0;
  let jsonObject;

  while (timeElapsed < timeout) {
    let retrievedRun = await openai.beta.threads.runs.retrieve(thread.id, run?.id);

    if (retrievedRun && retrievedRun.status === "completed") {
      const messagesFromThread = await openai.beta.threads.messages.list(thread.id);

      const jsonStringWithText = messagesFromThread.data[0].content[0].text.value;

      const jsonMatch = jsonStringWithText.match(/\{.*\}/s);
      const jsonString = jsonMatch ? jsonMatch[0] : '';

      const description = jsonStringWithText.replace(jsonString, '').trim();

    try {
      jsonObject = JSON.parse(jsonString);

      jsonObject.description = description;

      console.log("fially victory is mine", jsonObject)
    } catch (error) {
      console.error('Error parsing JSON:', error);
    }

      return jsonObject;
  }

    await new Promise((resolve) => setTimeout(resolve, interval));
    timeElapsed += interval;
}
 
}

muttyAssistent(dogOne, dogTwo);

