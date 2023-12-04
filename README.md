# dotfiles

Repo containing my dotfiles.

---

## "Listen here buddy! Just use GNU Stow!"

I am using GNU Stow to manage my `dotfiles` and I recommend it. Really.

---

## Setting GNU Stow properly

Clone this repository in your `$HOME` or `~/` directory.

After that you can run this command from inside the `~/dotfiles` directory:

    stow .

If, by any chance, you mess something up, just go back to the `~/dotfiles` directory
and run this command:

    stow -D .
