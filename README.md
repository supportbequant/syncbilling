# uisp-bqn-sync

Simple synchronization script between BQN and a billing system.

## Installation

The script requires python 3.10 or later with *requests* package version 2.28.1 (does not work with newer versions).

### In Ubuntu Linux:
`$ sudo app install python3`

`$ sudo app install pip`

`$ sudo pip3 install requests==2.28.1`

### In Arch Linux:
`$ sudo pacman -S python3`

`$ sudo pip3 install requests==2.28.`

### In Windows:
1. In elevated (administration) shell:

`> winget install python`

2. In normal shell:

`> pip install requests==2.28.`

#### In Mac OS:
1. Download package for Mac from python official site:

https://www.python.org/downloads/macos/

2. Install package (enter Administrator password when requested)

4. In command shell:

`$ pip3 install requests==2.28.`

## Setup

Create an API token in billing.

Enable REST API in BQN.

## Running the script

Every time a synchronization is needed, run the script. Use -h flag to see the options, including the BQN IP, user and password and the billing server and credentials.

The script does not include periodic execution, this should be done externally. In Linux, the script can be run periodically using crontab (for example, every 15 minutes).

`sudo crontab -e`
`*/15 * * * *  <script-full-path> <parametros-script> > /tmp/last-billing.log`

Example:

`*/15 * * * *  /home/myaccount/uisp/sync-uisp-bqn -b 192.168.0.121 myuser mypassword billing.server.com api-key > /tmp/last-billing.log`

## Known limitations

- The first time it may take minutes to run. Following executions will send to BQN only client changes and will be quicker.
- If the synchronization fails, no retry is attempted (must be done externally).

## Relation of BQN entities to UISP schema

See -h option for more information.
