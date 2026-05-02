# Steve Jobs Stack

The Steve Jobs OS for Claude Code.

Three skills that apply his product principles when you're drafting a PRD, reviewing a README, or writing a launch tweet. The output is the artifact, never a Jobs character delivering it.

```
> Write the launch tweet for huddle.
```

`/steve-jobs-pitch` returns:

> A standup that lives in your repo, not a meeting.
>
> Type yesterday/today/blockers in your editor, hit save. It commits to git and posts to Slack. Sixty seconds.
>
> github.com/yourname/huddle

That is the entire output. No "Steve would say," no theatrical bluntness, no preamble.

## Install

```bash
curl -sSL https://raw.githubusercontent.com/vikranthreddimasu/steve-jobs-stack/main/install.sh | bash
```

Then in Claude Code:

```
> Help me draft a PRD for X            # → /steve-jobs-make
> Review my README, be honest          # → /steve-jobs-refine
> Write the launch tweet for Y         # → /steve-jobs-pitch
```

The skills auto-trigger on natural language. No slash needed.

## The three skills

| Skill | When to reach for it | What you get back |
|-------|---------------------|-------------------|
| `/steve-jobs-make` | Starting fresh, no artifact yet | New work, drafted from scratch with a forced cut |
| `/steve-jobs-refine` | Something exists and needs the next pass | A sharper version of it: concrete findings, ship/cut calls, the one move that lifts the work |
| `/steve-jobs-pitch` | The job is to introduce or announce | The narrative artifact, written end-to-end |

Some overlap is intentional. "Rewrite my README intro" can route to pitch (new copy) or refine (revision of existing). The trigger phrasing in each skill picks.

## Worked example: a tool called `huddle`

`huddle` is a standup-killer that lives in your repo.

**`/steve-jobs-make`** drafts the v1 PRD. It opens with the keynote line ("a standup that lives in your repo, not a meeting"), three concrete daily-use scenes, an explicit "not building" list (no web UI, no real-time presence, no comments on other people's huddles), and a sharp success metric: a four-person team uses it ten weekdays in a row without prompting.

**`/steve-jobs-refine`** reviews the README. It returns about 400 words: what the README is trying to be, two specific quoted strengths, two specific weaknesses, and the one move that lifts the work — usually structural. For huddle: *swap the file-structure section and the demo. You're explaining the artifact before showing it.*

**`/steve-jobs-pitch`** writes the launch tweet (above), the README hero, and the demo script. Same product, three shapes of output.

## Silent mentor, not impersonation

Most "Steve Jobs AI" projects impersonate him: manufactured quotes, theatrical bluntness, "as Steve would say" preambles. That works for thinking out loud and fails when you have to ship. A launch tweet doesn't need a Jobs character delivering it; it needs to be a great launch tweet.

These skills make the principles invisible. Each `SKILL.md` forbids roleplay framing and theatrical persona moves.

For the impersonation version (Jobs as a counterpart you talk things through with), see [`steve-jobs-skill`](https://github.com/vikranthreddimasu/steve-jobs-skill). Use that for direction. This stack is for the artifacts.

## How each skill thinks

Each runs a pipeline, not a checklist:

- **`make`** — interrogate the project → find the soul → force the cut → pass the gate → prototype the conviction
- **`refine`** — see the thing → interrogate the direction → make the binary call → name the one move → reach for a tool when stuck
- **`pitch`** — draft the four assets (keynote line, the three, the demo, the friend message) → ride them on a 7-beat arc → adapt to format

Format templates (PRD shape, launch tweet structure, etc.) sit on top of the pipelines.

## Built on primary sources

The `references/` folder is the source material — primary research, not LLM lore:

- `research-report.md` — about 10k words, around 60 sources from Isaacson, Schlender/Tetzeli, Segall, Fadell, Hertzfeld, plus Jobs's own keynotes and interviews
- `keynote-case-studies.md` — six keynotes broken down by what move did the load-bearing work (1984 Mac, iMac, iPod, iPhone, MacBook Air, iPad)
- `failure-patterns.md` — nine Apple-era anti-patterns with trigger phrases (Lisa, NeXT cube, Apple Cube, MobileMe, Antennagate, App Store reversal, options backdating, cancer treatment delay, personal cost)
- `product-case-studies.md` — four build cases (1997 product cull, iMac, iPod, Apple Retail)

Skills load these only when the question calls for it.

## Repo structure

```
steve-jobs-stack/
├── README.md
├── LICENSE
├── install.sh
├── references/
├── steve-jobs-make/SKILL.md
├── steve-jobs-refine/SKILL.md
└── steve-jobs-pitch/SKILL.md
```

Each `SKILL.md` is a single editable file. Fork it, change it, make it yours.

## License

MIT.
