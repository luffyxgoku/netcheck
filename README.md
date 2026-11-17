# NetCheck – Network Health Checker

A Bash-based network diagnostic tool that checks basic network connectivity, DNS resolution, HTTP response status, local IP addresses, and active listening ports.

## Features

- Displays local IP addresses.
- Tests network connectivity using `ping`.
- Checks DNS resolution using `getent`.
- Retrieves HTTP status codes using `curl`.
- Displays active network ports using `ss`.
- Saves diagnostic results into timestamped report files.
- Accepts custom hostnames as command-line arguments.

## Technologies Used

- Bash Scripting
- Linux Networking Commands
- Ubuntu

## Linux Commands Used

| Command | Purpose |
|---|---|
| `hostname -I` | Displays local IP addresses |
| `ping` | Tests network connectivity |
| `getent` | Performs hostname resolution |
| `curl` | Checks HTTP responses |
| `ss` | Displays network sockets and listening ports |
| `tee` | Displays and saves command output |
| `date` | Generates timestamps |
| `head` | Limits displayed output |

## Installation

Clone the repository:

```bash
git clone YOUR_REPOSITORY_URL
```

Navigate into the project:

```bash
cd netcheck
```

Make the script executable:

```bash
chmod +x netcheck.sh
```

## Usage

Run using the default hostname:

```bash
./netcheck.sh
```

Check a custom hostname:

```bash
./netcheck.sh github.com
```

Other examples:

```bash
./netcheck.sh cloudflare.com
./netcheck.sh amazon.com
```

## Output

The script displays diagnostic information directly in the terminal and generates a timestamped text report.

Example:

```text
network_report_20261117_140000.txt
```

## Requirements

- Linux or Ubuntu (including WSL2).
- Bash.
- iproute2
- iputils-ping
- curl
- Standard GNU/Linux utilities.

Install dependencies on Ubuntu:

```bash
sudo apt update
sudo apt install iproute2 iputils-ping curl
```

## Future Improvements

- Network latency measurement.
- Packet loss analysis.
- Port availability checks.
- Improved error handling.
- Automated network monitoring.

## Author

Md Sami Adnan
