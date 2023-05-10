# 🚀🐟 starship.fish

[Fish](https://fishshell.com/) plugin for [Starship](https://starship.rs/).

Advantages over plain `starship init fish | source`:

- [Faster shell startup](https://github.com/starship/starship/issues/2637) by *AOT* initialization
- Managed as a plugin, can be installed or disabled via plugin managers
- Fallback to default prompts when Starship is unavailable

**TIP**: Even if you don't use this plugin, you can still speed up Starship initialization by using <code>starship init fish <strong>--print-full-init</strong> | source</code>.

## Installation

- [plug.fish](https://github.com/kidonng/plug.fish)

  ```sh
  plug install kidonng/starship.fish
  ```

- [Fisher](https://github.com/jorgebucaran/fisher)

  ```sh
  fisher install kidonng/starship.fish
  ```
