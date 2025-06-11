# setup
A collection of Linux setup scripts for my own


## Usage (from curl)

```bash
curl -fsSL https://bit.ly/ggondim-setup | bash
```

## Usage (from repo)

```bash
git clone https://github.com/ggondim/setup.git
cd setup
chmod +x setup.sh
./setup.sh
```

### Interactive install

Just opt-in for the desired scripts when prompted.

#### Generic scripts

- `unminimize`: Unminimize Ubuntu server.
- `basics`: Install basic packages like `build-essential`, `git`, `curl`, `wget`, and `vim`.
- `git-configs`: Set up Git configurations like default branch and follow tags.
- `shell-nutella`: Install shell utilities like `fastfetch`, `lsd`, `btop`, and `superfile`.
- `docker`: Install Docker and Docker Compose.
- `dev-js`: Set up JavaScript development environment with `volta`, `node`, `bun`, and `pnpm`.
- `nerd-fonts`: Install Nerd Fonts for better terminal aesthetics.
- `personal-software`: Install personal software like Enpass, Parsec, Chrome, VSCode, and Surfshark.
