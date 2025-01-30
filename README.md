# Find and Kill Nautilus (fkn)

## Overview
This script, named `fkn`, searches for running Nautilus processes and prompts the user to kill them one by one. If no Nautilus processes are found, it exits cleanly.

## Features
- Lists all running Nautilus processes before prompting for action.
- Asks the user whether to terminate each process individually.
- Accepts `Y` or `Enter` to kill a process, `n` to skip.
- Provides a `-h` or `--help` flag to display usage information.

## Installation
1. Place the script in `~/.local/bin/` or `~/bin/`.
2. Ensure it is executable:
   ```bash
   chmod +x ~/.local/bin/fkn
   ```
3. Verify the script is accessible:
   ```bash
   fkn -h
   ```

## Usage
To run the script:
```bash
fkn
```
To display help:
```bash
fkn -h
```

## License
This script is provided under an open-source license. Modify and distribute freely.


