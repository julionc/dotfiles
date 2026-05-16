// This script unsubscribes from YouTube channels (tested on Zen Browser)
// Based on this script:
// https://www.reddit.com/r/youtube/comments/1lle8m6/500_clicks_nope_one_script_to_massunsubscribe/
//
// Run this script in the browser console on:
// https://www.youtube.com/feed/channels

(async () => {
  const PAUSE  = 1400;          // Delay between clicks
  const LABELS = {              // Button labels
    prompt  : ['Unsubscribe from', '¿Deseas anular tu suscripción a'],
    confirm : ['Unsubscribe', 'Anular']
  };
  // ----------------------------
  const rows = [...document.querySelectorAll('ytd-channel-renderer')];
  console.log(`⏱️  Found ${rows.length} channels`);
  const sleep = ms => new Promise(r => setTimeout(r, ms));

  let processed = 0;
  for (const row of rows) {
    // console.log(row.outerHTML)
    const btn = row.querySelector(
      `[aria-label^="${LABELS.prompt[0]}"],[aria-label^="${LABELS.prompt[1]}"]`
    );
    if (!btn) continue;
    btn.click();

    await sleep(300);
    const confirm = document.querySelector(
      `yt-confirm-dialog-renderer #confirm-button tp-yt-paper-button,
       yt-confirm-dialog-renderer [aria-label^="${LABELS.confirm[0]}"],
       yt-confirm-dialog-renderer [aria-label^="${LABELS.confirm[1]}"]`
    );
    confirm?.click();

    processed++;
    console.log(`✅  ${processed}/${rows.length}`);
    await sleep(PAUSE);
  }
  console.log('🎉  Finished');
})();
