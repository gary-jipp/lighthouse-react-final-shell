

import OpenAI from "openai";

const openai = new OpenAI({
  apiKey: process.env.local.OPENAI_API
});

async function main() {
  const completion = await openai.chat.completions.create({
    messages: [{ role: "system", content: "You are a helpful assistant." }],
    model: "gpt-4",
  });

  console.log(completion.choices[0]);
}

main();