# qs-drugs-perms


A tiny, non-invasive permission compatibility helper for Quasar **qs-drugs-creator**.  
This repository contains a small resource that exposes a permissive callback/export so server owners can map custom framework groups (owner/god/etc.) to the admin checks used by Quasar's Drugs Creator — **without modifying escrowed files**.

> ⚠️ This is **not** the Quasar `qs-drugs`/`qs-drugs-creator` asset and does **not** contain any escrowed or paid files. It only provides a safe compatibility layer to avoid permission-related "not enough permission" messages while the config.lua is escrowed.

---

## Features

- Map your framework-specific admin/group names (owner/god/staff) to the permission check the creator expects.
- Zero edits to Quasar's encrypted resources.
- Lightweight and framework-aware QBCore
- Starts before `qs-drugs-creator` and intercepts permission callbacks.

---

## Installation

1. Place the folder in your resources directory, or [qs] folder
2. <img width="199" height="62" alt="image" src="https://github.com/user-attachments/assets/37eac6c9-8749-4dc4-9124-96b71a7b5271" />

