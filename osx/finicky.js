module.exports = {
  defaultBrowser: "Safari",
  handlers: [
    {
      // Open apple.com and example.org urls in Safari
      match: finicky.matchHostnames(["apple.com", "example.org"]),
      browser: "Safari"
    },
    {
      // Open any url including the string "workplace" in Firefox
      match: /workplace/,
      browser: "Firefox"
    },
    {
      // Open Social Media in Opera
      match: finicky.matchHostnames(["facebook.com", "twitter.com", "instagram.com", "whatsapp.com"]),
      browser: "Opera"
    },
    {
      // Open IMs forums in Firefox
      match: finicky.matchHostnames(["blackhatworld.com", "forobeta.com"]),
      browser: "Firefox"
    }
  ]
};
