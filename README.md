# Steve Jobs Stack

**The Steve Jobs OS for AI agents.**

AI made producing almost free. More code. More PRDs. More variants. More features. More launch copy. The scarce thing now is not output — it is judgment. What is worth making. What to cut. What story to tell. What to refuse.

This stack is an operating system for that. Three skills that turn your coding agent into something closer to a product partner: one for deciding what should exist, one for raising the standard of what does, and one for making the world want it. Built for the people working on AI products, agents, research prototypes, developer tools, open source, and the strange new things AI lets us try.

Not a Steve Jobs chatbot. No invented quotes. No keynote voice. The principles disappear into the work.

## Why I made this

I wanted an AI that thought *with* me, not for me.

Most agent workflows are powerful but shapeless. Ask for an idea, get ten. Ask for a plan, get a long plan. Ask for product feedback, get a polite list of improvements. The model is doing work — it is not applying judgment. It is not asking what should exist, what should be cut, what the user actually feels in the broken moment, or whether the work has a story strong enough to survive contact with the world.

I wanted structure for that. A path.

Steve Jobs became the lens because his transferable skill was not charisma or cruelty. It was taste as an operating system — start with the experience, force the cut, make the product and the story one thing, refuse to hide weak thinking behind more features. He was wrong plenty of times: the Cube, MobileMe, Antennagate, the App Store reversal. Those failure patterns are part of the curriculum, not embarrassments to skip.

This matters most in AI. *AI-powered X* is not a product. A model is not an experience. A clever agent loop is not a reason for anyone to care. The job is to decide what changes for the user when the system exists, and to be honest when it doesn't change anything yet.

The Steve Jobs Stack is my attempt to make that thinking reusable. Not a personality. Not a costume. A small OS for making better things with AI.

## Setup

Paste this into your coding agent. The skills route themselves, so the prompt only has to set the posture.

```text
Adopt the Steve Jobs Stack as my operating system for product work —
not a persona, an OS for taste:
https://github.com/vikranthreddimasu/steve-jobs-stack

Install or read it, then ask me what I am working on.
```

## Install

```bash
curl -sSL https://raw.githubusercontent.com/vikranthreddimasu/steve-jobs-stack/main/install.sh | bash
```

The installer puts the three skills in `~/.agents/skills/` — the universal, harness-agnostic location — and symlinks them into Claude Code and Cursor automatically if either is installed. One source of truth, every harness reads from it. Edit `~/.agents/skills/<skill>/SKILL.md` once and every agent sees the change.

If the script finds Codex on your machine, it prints a wire-up hint instead of installing — Codex does not auto-load skills today, so it needs a one-line reference in your `AGENTS.md` to pick them up.

The script is re-runnable. Skill content is preserved on subsequent runs; symlinks are refreshed so a newly-installed harness gets wired in without touching your edits.

## The three skills

The stack is organized around the lifecycle of making anything with AI:

- `steve-jobs-make` — for what does not exist yet.
- `steve-jobs-refine` — for what does, and needs judgment.
- `steve-jobs-pitch` — for what is ready to be introduced.

These are not writing templates. They are three modes of product work. You describe the work, and the right one takes over.

### `make` — Decide what should exist

For a new product, agent workflow, research direction, PRD, name, or v1 plan. Before producing the artifact, the skill interrogates the idea: what it is really for, who it serves in what specific moment, what broken status quo it replaces, the one risky bet it depends on, and what the user experiences when the system is wrong. For anything AI-shaped, that last question *is* the product. The artifact is a byproduct of the thinking, not the point of it.

### `refine` — Raise the standard

For work that already exists — a draft, a feature, a launch candidate, a strategic direction. The skill reviews the real artifact, not the description of it. It evaluates direction before execution. When asked whether to ship, add a feature, or keep going, it makes a binary call and names the one move — almost always a cut — that takes the work from competent to memorable. When something feels wrong but you cannot say why, it pattern-matches against documented Apple-era failures so the diagnosis has a name.

### `pitch` — Make the world want it

For introducing the thing — launch tweets, README heroes, Show HN posts, demo scripts, release notes, conference proposals, elevator pitches. The skill verifies every concrete claim, builds the four assets first (the keynote line, the three, the demo moment, the friend message), and treats every launch artifact as a translation of those — not a fresh draft. The job is to make the value obvious in 30 seconds.

## Example prompts

```text
I have an idea for an AI coding agent that reviews migrations
before deploy. What should v1 be?
```

Routes to `make`. The skill should force the customer moment, the antagonist, the one bet, the failure mode, and the ruthless v1 — before producing a single bullet.

```text
Review this agent workflow. Be honest about whether it is ready
to ship.
```

Routes to `refine`. The skill should look at the actual workflow, make the readiness call, name the weak point, and give the one move that lifts it before launch.

```text
Write the Show HN title and post for this repo.
```

Routes to `pitch`. The skill should verify the claims, find the keynote line, build the demo moment, and write the post — not three options, the post.

## Source material

The skills are built on a research base packaged in `references/`:

- `research-report.md` — the operating system itself: customer experience first, focus, integrated stack, liberal arts plus technology, simplicity, invisible craft, talent density, small teams, DRI ownership, self-cannibalization, keynote craft, taste over data, crisis as clarity, and the limits of conviction.
- `product-case-studies.md` — the build decisions: the 1997 product cull, iMac, iPod, Apple Retail.
- `keynote-case-studies.md` — the launches: Macintosh, iMac, iPod, iPhone, MacBook Air, iPad.
- `failure-patterns.md` — the traps: Lisa, NeXT cube, Apple Cube, MobileMe, Antennagate, the App Store reversal, options backdating, cancer delay, and the personal-cost pattern.

The skills do not load all of this every time. They reach for the references when the work calls for them.

## Repo structure

```text
steve-jobs-stack/
├── README.md
├── LICENSE
├── install.sh
├── references/
│   ├── failure-patterns.md
│   ├── keynote-case-studies.md
│   ├── product-case-studies.md
│   └── research-report.md
├── steve-jobs-make/
│   └── SKILL.md
├── steve-jobs-refine/
│   └── SKILL.md
└── steve-jobs-pitch/
    └── SKILL.md
```

Each skill is a single editable `SKILL.md`. Fork it, tune it, and make the OS fit the way you want your agents to work.

## License

MIT.
