# setup
A collection of Linux setup scripts for my own


## Usage (from curl)

```bash
curl -Ls https://bit.ly/ggondim-setup | bash
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

![screenshot](https://github.com/user-attachments/assets/2a28f4ef-3ee6-4aa4-a39b-55fe828df820)

## Scripts

### Shell

- `shell-basic.sh` - APT upgrade + build-essential, curl, wget, git, vim
- `shell-nutella.sh` - lsd, btop, superfile

### Desktop

- `desktop-software.sh` - Enpass, Parsec, Chrome, VSCode Insiders, Surfshark
- `desktop-nutella.sh` - Nerd Fonts (interactive install)

### Development

- `dev-js.sh` - Volta.sh, bun, pnpm

### Server

[TO-DO]
