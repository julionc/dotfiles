// This script removes all videos from YouTube Watch Later (tested on Zen Browser)
// Based on this script:
// https://www.reddit.com/r/youtube/comments/1glnuwb/script_to_remove_all_watch_later_videos/
//
// Run this script in the browser console on:
// https://www.youtube.com/playlist?list=WL

(async () => {
  const PAUSE  = 200;          // Delay between clicks

  // ----------------------------
  const rows = [...document.querySelectorAll("button yt-icon.style-scope.ytd-menu-renderer")];
  console.log(`⏱️  Found ${rows.length} videos`);
  const sleep = ms => new Promise(r => setTimeout(r, ms));

  let processed = 0;
  for (const row of rows) {
    row.click();
    await sleep(200);
    
    const menu = document.querySelector('ytd-menu-popup-renderer');
    if (!menu) {
      console.warn('Watch Later menu not found.');
      return;
    }

    const items = Array.from(menu.querySelectorAll('yt-formatted-string'))
      .filter((span) => span.textContent.includes('Eliminar'));
    
    items.forEach((span) => span.click());

    processed++;
    console.log(`✅  ${processed}/${rows.length}`);
    await sleep(PAUSE);
  }
  console.log('🎉  Finished');
  alert("reload");
  
})();
