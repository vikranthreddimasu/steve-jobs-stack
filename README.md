# Steve Jobs Stack

> *"Deciding what not to do is as important as deciding what to do."*

**Make, refine, and pitch your work like Steve Jobs would have.**

Three Claude Code skills for personal projects:

- **`/steve-jobs-make`** — drafting greenfield work: PRDs, names, READMEs, v1 scoping
- **`/steve-jobs-refine`** — improving what exists: reviews, decisions, strategic direction
- **`/steve-jobs-pitch`** — narrative artifacts: launch tweets, hero copy, demo scripts

The skills don't impersonate Jobs. They embody his standards invisibly — the output is the artifact, not commentary about it. (For the impersonation version, see [`steve-jobs-skill`](https://github.com/vikranthreddimasu/steve-jobs-skill).)

## Example: building one project across the stack

A small project: a Claude Code skill called `daily-journal` that logs daily entries to a Git repo.

**1.** `> Help me draft what v1 of /daily-journal should be.` → `/steve-jobs-make` produces a 600-word PRD that opens with the keynote line ("a journal that lives in your repo, not a notes app you'll abandon"), three concrete daily-use scenes, an explicit "what we're not building" list, and a sharp success metric ("you use it three Sundays in a row without prompting").

**2.** `> Review my README, be honest.` → `/steve-jobs-refine` opens the live GitHub URL, returns ~400 words: what the README is trying to be, two specific quoted strengths, two specific weaknesses, a cut list, and the one move that lifts the work — usually a structural reorder, not a rewrite.

**3.** `> Write the launch tweet for daily-journal.` → `/steve-jobs-pitch` returns:

> A daily journal that lives in your repo. Type the date, type the entry, get a commit. No app, no account, no servers.
>
> github.com/vikranthreddimasu/daily-journal

Three different artifacts, same standards.

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

## How the three skills differ

| Skill | When to use | Output |
|-------|-------------|--------|
| `make` | Starting fresh — no artifact yet | A PRD, a name, a README, a v1 plan |
| `refine` | Something exists, needs improvement | Concrete findings, cuts, the one move that lifts the work |
| `pitch` | The work is to *introduce* or *announce* | A tweet, a README intro, an HN post, a demo script |

There's some overlap by design — "rewrite my README intro" could land in either pitch (new copy) or refine (rewrite of existing). The trigger phrasing in each skill's frontmatter routes asks to the right one.

## Philosophy: silent mentor, not impersonation

Most "Steve Jobs AI" projects do impersonation — Jobs vocabulary, "shit/insanely great," manufactured quotes. That's good for thinking out loud but bad for shipping work. When you ask for a launch tweet, you don't want a Jobs character delivering it; you want a great launch tweet.

These three skills make Jobs's principles invisible. You don't see Jobs in the output — you see the artifact, and Jobs's standards shape how it was made. The skills explicitly forbid roleplay framing, "as Steve would say" preambles, and theatrical bluntness.

The principles each skill carries:

- **Customer experience first**, work backwards to the technology
- **Taste** — sweat the parts users don't see
- **People don't know what they want until you show it to them**
- **Storytelling** — the keynote *is* the product
- **End-to-end ownership** of the experience
- **Cut before adding** — subtraction is usually the move

Each skill applies the same five principles through a different lens: building (`make`), critiquing (`refine`), or introducing (`pitch`).

## Repo structure

```
steve-jobs-stack/
├── README.md
├── LICENSE
├── install.sh
├── steve-jobs-make/
│   └── SKILL.md          # ~190 lines — playbooks for PRDs, naming, v1 scoping, casual exploration
├── steve-jobs-refine/
│   └── SKILL.md          # ~200 lines — playbooks for review, ship/cut decisions, strategic direction
└── steve-jobs-pitch/
    └── SKILL.md          # ~180 lines — playbooks for launch tweets, README intros, HN posts, demo scripts
```

Each `SKILL.md` is a self-contained instruction file Claude Code reads when triggered. Edit them directly to fit your taste; that's the point.

## Related

- [`steve-jobs-skill`](https://github.com/vikranthreddimasu/steve-jobs-skill) — the **embodiment** version of Jobs (talks like him, uses his voice, runs his decision heuristics, does live research before judging). Use that one for thinking through hard problems with Jobs as a counterpart; use this stack for actually producing the work.

The two together: `steve-jobs-skill` for analysis and direction; `steve-jobs-stack` for shipping.

## License

MIT.
