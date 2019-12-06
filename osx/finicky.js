module.exports = {
  defaultBrowser: "Safari",
  handlers: [
    {
      // Open Social Media in Opera
      match: finicky.matchHostnames(["facebook.com", "twitter.com", "instagram.com", "whatsapp.com"]),
      browser: "Opera"
    },
    {
      // Open IMs forums in Firefox
      match: finicky.matchHostnames(["blackhatworld.com", "forobeta.com"]),
      browser: "Firefox"
    },
    {
      // Open Github in Brave
      match: finicky.matchHostnames(["github.com"]),
      browser: "Brave"
    },
    {
      // Open Twitch in Opera
      match: finicky.matchHostnames(["twitch.tv"]),
      browser: "Opera"
    },
    {
      // Open Reddit in Brave
      match: finicky.matchHostnames(["reddit.com"]),
      browser: "Brave"
    }

  ]
};
