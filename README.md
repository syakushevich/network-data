# README

API for collecting popular social networks data

Use `curl localhost:3000` to get Facebook, Instagram and Twitter data in json.
Example output:
```
{
  "twitter": [
    "If you live to be 100, you should make up some fake reason why, just to mess with people... like claim you ate a pinecone every single day.",
    "STOP TELLING ME YOUR NEWBORN'S WEIGHT AND LENGTH I DON'T KNOW WHAT TO DO WITH THAT INFORMATION."
  ],
  "facebook": [
    "Here's some photos of my holiday. Look how much more fun I'm having than you are!",
    "I am in a hospital. I will not tell you anything about why I am here."
  ],
  "instagram": [
    "food",
    "coffee",
    "coffee",
    "food",
    "this one is of a cat"
  ]
}
```

In case of invalid data returned from social network's API, there will be message next to name
```
{
  "twitter": ["Invalid response"],
   ...
}
```