# Steve Jobs Stack

**A judgment layer for AI product work.**

AI made output almost free. More code. More PRDs. More variants. More features. More copy. The scarce thing now is not output, it is judgment. What is worth making. What to cut. What story to tell. What to refuse.

This stack is built for that. Three skills that turn your coding agent into something closer to a thinking partner: one for deciding what should exist, one for raising the standard of what does, and one for making the world want it.

---

## Why I made this

I wanted an AI that thought *with* me, not for me.

Most agent workflows are powerful but shapeless. Ask for an idea, get ten. Ask for a plan, get a long plan. Ask for product feedback, get a polite list of improvements. The model is doing work. It is not applying judgment. It is not asking what should exist, what should be cut, what the user actually feels in the broken moment, or whether the work has a story strong enough to survive contact with the world.

I wanted structure for that. A path.

Steve Jobs became the lens because his transferable skill was not charisma or cruelty. It was taste as discipline: start with the experience, force the cut, make the product and the story one thing, refuse to hide weak thinking behind more features. He was wrong plenty of times. The Cube, MobileMe, Antennagate, the App Store reversal. Those failure patterns are part of this, not embarrassments to skip over.

It matters most in AI. *AI-powered X* is not a product. A model is not an experience. A clever agent loop is not a reason for anyone to care. The job is to decide what actually changes for the user when the system exists, and to be honest when the answer is nothing yet.

The Steve Jobs Stack is my attempt to make that thinking reusable. Not a personality. Not a costume. A discipline for making better things.

---

## Setup

**If you use a coding agent (Claude Code, Cursor, Codex, or similar):** paste this directly into the chat and your agent handles the rest.

```text
Install the Steve Jobs Stack from this repo:
https://github.com/vikranthreddimasu/steve-jobs-stack

Run the install.sh script, then ask me what I am working on.
```

**If you are comfortable in the terminal:** run the installer directly.

```bash
curl -sSL https://raw.githubusercontent.com/vikranthreddimasu/steve-jobs-stack/main/install.sh | bash
```

Either way, the installer wires three skills — `steve-jobs-make`, `steve-jobs-refine`, and `steve-jobs-pitch` — into Claude Code, Cursor, and Codex automatically (whichever you have installed). Re-runnable; if a skill already exists, your edits stay.

Once installed, the skills route themselves. Describe what you are working on and the right one takes over. A few prompts to get started:

```text
Help me draft a PRD for X         # triggers steve-jobs-make
Review my README, be honest       # triggers steve-jobs-refine
Write the launch tweet for Y      # triggers steve-jobs-pitch
```

---

## The three skills

The stack follows the lifecycle of making anything with AI.

- `steve-jobs-make` for what does not exist yet.
- `steve-jobs-refine` for what does, and needs judgment.
- `steve-jobs-pitch` for what is ready to be introduced.

These are not templates. They are modes of work. You describe what you are doing and the right one takes over.

### `make` — Decide what should exist

For a new product, agent workflow, research direction, PRD, name, or v1 plan. Before producing the artifact, the skill interrogates the idea: what it is really for, who it serves and in what specific moment, what broken status quo it replaces, the one risky bet it depends on, and what happens when the system is wrong. For anything AI-shaped, that last question *is* the product. The artifact is a byproduct of the thinking, not the goal.

### `refine` — Raise the standard

For work that already exists: a draft, a feature, a launch candidate, a strategic direction. The skill reviews the real artifact, not the description of it. It evaluates direction before execution. When asked whether to ship, add a feature, or keep going, it makes a binary call and names the one move, almost always a cut, that takes the work from competent to memorable. When something feels off but you cannot say why, it pattern-matches against documented Apple-era failures so the diagnosis has a name.

### `pitch` — Make the world want it

For introducing the thing: launch tweets, README heroes, Show HN posts, demo scripts, release notes, conference proposals, elevator pitches. The skill verifies every concrete claim, builds four assets first (the keynote line, the three, the demo moment, the friend message), and treats every launch artifact as a translation of those, not a fresh draft. The job is to make the value obvious in 30 seconds.

---

## Example prompts

```text
I have an idea for an AI coding agent that reviews migrations
before deploy. What should v1 be?
```

Routes to `make`. The skill forces the customer moment, the antagonist, the one bet, the failure mode, and the ruthless v1 before producing a single bullet.

```text
Review this agent workflow. Be honest about whether it is ready
to ship.
```

Routes to `refine`. The skill looks at the actual workflow, makes the readiness call, names the weak point, and gives the one move that lifts it before launch.

```text
Write the Show HN title and post for this repo.
```

Routes to `pitch`. The skill verifies the claims, finds the keynote line, builds the demo moment, and writes the post. Not three options. The post.

---

## Source material

The skills are built on a research base in `references/`:

- `research-report.md` — the core principles: customer experience first, focus, integrated stack, liberal arts plus technology, simplicity, invisible craft, talent density, small teams, DRI ownership, self-cannibalization, keynote craft, taste over data, crisis as clarity, and the limits of conviction.
- `product-case-studies.md` — the build decisions: the 1997 product cull, iMac, iPod, Apple Retail.
- `keynote-case-studies.md` — the launches: Macintosh, iMac, iPod, iPhone, MacBook Air, iPad.
- `failure-patterns.md` — the traps: Lisa, NeXT cube, Apple Cube, MobileMe, Antennagate, the App Store reversal, options backdating, cancer delay, and the personal-cost pattern.

The skills do not load all of this every time. They reach for what the work calls for.

---

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

Each skill is a single editable `SKILL.md`. Fork it, tune it, make the discipline fit how you want to work.

---

## License

MIT.