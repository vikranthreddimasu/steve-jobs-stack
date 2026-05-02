# Steve Jobs Stack

**The Steve Jobs OS for Claude Code.**

Three skills that quietly apply Jobs's product principles when you're drafting a PRD, reviewing a README, or writing a launch tweet — without impersonating him. Built from primary-source research (Isaacson, Schlender/Tetzeli, Segall, Fadell, Hertzfeld, Jobs's own keynotes) distilled into a thinking framework, not LLM training-data lore. The output is the artifact, not commentary about it.

- **`/steve-jobs-make`** — drafting greenfield work: PRDs, names, READMEs, v1 scoping
- **`/steve-jobs-refine`** — improving what exists: reviews, ship/cut decisions, strategic direction
- **`/steve-jobs-pitch`** — narrative artifacts: launch tweets, hero copy, demo scripts, HN posts

## What it looks like

A small project: a Claude Code skill called `daily-journal` that logs daily entries to a Git repo.

```
> Help me draft what v1 of /daily-journal should be.
```

**`/steve-jobs-make`** produces a 600-word PRD that opens with the keynote line ("a journal that lives in your repo, not a notes app you'll abandon"), three concrete daily-use scenes, an explicit "what we're not building" list, and a sharp success metric ("you use it three Sundays in a row without prompting").

```
> Review my README, be honest.
```

**`/steve-jobs-refine`** opens the live GitHub URL, returns ~400 words: what the README is trying to be, two specific quoted strengths, two specific weaknesses, a cut list, and the one move that lifts the work — usually a structural reorder, not a rewrite.

```
> Write the launch tweet for daily-journal.
```

**`/steve-jobs-pitch`** returns:

> A daily journal that lives in your repo. Type the date, type the entry, get a commit. No app, no account, no servers.
>
> github.com/yourname/daily-journal

Three artifacts, same standards.

## Install

```bash
curl -sSL https://raw.githubusercontent.com/vikranthreddimasu/steve-jobs-stack/main/install.sh | bash
```

Or manually:

```bash
git clone --depth=1 https://github.com/vikranthreddimasu/steve-jobs-stack /tmp/sj-stack
cp -r /tmp/sj-stack/steve-jobs-* ~/.claude/skills/
rm -rf /tmp/sj-stack
```

Then in Claude Code:

```
> Help me draft a PRD for X            # → /steve-jobs-make
> Review my README, be honest          # → /steve-jobs-refine
> Write the launch tweet for Y         # → /steve-jobs-pitch
```

The skills auto-trigger on natural-language phrases. No slash needed.

## Philosophy: silent mentor, not impersonation

Most "Steve Jobs AI" projects impersonate — Jobs vocabulary, manufactured quotes, theatrical bluntness. That's good for thinking out loud but bad for shipping work. When you ask for a launch tweet, you don't want a Jobs character delivering it; you want a great launch tweet.

These skills make Jobs's principles invisible. You see the artifact, not the persona. The skills explicitly forbid roleplay framing, "as Steve would say" preambles, and theatrical bluntness.

For the impersonation version — Jobs as a counterpart for thinking out loud — see [`steve-jobs-skill`](https://github.com/vikranthreddimasu/steve-jobs-skill).

## How the three differ

| Skill | When to use | Output |
|-------|-------------|--------|
| `make` | Starting fresh — no artifact yet | A PRD, a name, a README, a v1 plan |
| `refine` | Something exists, needs improvement | Concrete findings, cuts, the one move that lifts the work |
| `pitch` | The work is to *introduce* or *announce* | A tweet, a README intro, an HN post, a demo script |

There's some overlap by design — "rewrite my README intro" could land in either pitch (new copy) or refine (rewrite of existing). The trigger phrasing in each skill's frontmatter routes asks to the right one.

## How they think

Each skill runs a thinking pipeline, not a checklist of tips:

- **`make`** — find the soul → force the cut → pass the gate → prototype the conviction
- **`refine`** — see the thing → make the binary call → name the one move → reach for a tool when stuck
- **`pitch`** — draft the four assets (keynote line, the three, the demo, the friend message) → ride them on a 7-beat arc → adapt to format

The pipelines are the load-bearing structure. Format playbooks (PRD template, launch tweet structure, etc.) are downstream applications.

## The references

The `references/` folder is the source material the skills draw from when needed:

- `research-report.md` — ~10k-word foundation document, ~60 primary sources from Isaacson, Schlender/Tetzeli, Segall, Fadell, Hertzfeld, Jobs's own keynotes and interviews
- `keynote-case-studies.md` — six Jobs keynotes broken down by what move did the load-bearing work (1984 Mac, iMac, iPod, iPhone, MacBook Air, iPad)
- `failure-patterns.md` — nine Apple-era anti-patterns with trigger phrases (Lisa, NeXT cube, Apple Cube, MobileMe, Antennagate, App Store reversal, options backdating, cancer treatment delay, personal cost)
- `product-case-studies.md` — four build cases (1997 product cull, iMac, iPod, Apple Retail)

The skills point to these docs when relevant — load them in when needed, ignore otherwise.

## Repo structure

```
steve-jobs-stack/
├── README.md
├── LICENSE
├── install.sh
├── references/
│   ├── research-report.md
│   ├── keynote-case-studies.md
│   ├── failure-patterns.md
│   └── product-case-studies.md
├── steve-jobs-make/
│   └── SKILL.md
├── steve-jobs-refine/
│   └── SKILL.md
└── steve-jobs-pitch/
    └── SKILL.md
```

Each `SKILL.md` is a self-contained instruction file Claude Code reads when triggered. Edit them directly to fit your taste; that's the point.

## Related

- [`steve-jobs-skill`](https://github.com/vikranthreddimasu/steve-jobs-skill) — the **embodiment** version: Jobs talks back. Uses his voice, runs his decision heuristics, WebSearches before judging. Use that one for thinking through hard problems with Jobs as a counterpart; use this stack for actually producing the work.

Together: `steve-jobs-skill` for analysis and direction; `steve-jobs-stack` for shipping.

## License

MIT.
