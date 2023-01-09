# DAO Registry - smart contract

This smart contract serves as a decentralized autonomous organization (DAO) registry for the different types of organizations.

## Development status

Working smart contract with some deployment bugs - please see [**TODO**](./TODO.md) file

## Installation

These are the installation instructions of this software for the different Linux distributions.

**IMPORTANT NOTE**: It is recommended to install this software on a clean OS installation, otherwise it may cause that other software previously installed on your server could stop working properly due to this. You are using this software at your own risk.

### Debian / Ubuntu Linux

Log in as "root" on your server and run the following commands to download the necessary dependencies and the latest version of this software from GitHub:

```console
apt update
apt -y upgrade
apt -y install curl git
curl -sL https://deb.nodesource.com/setup_18.x | sudo bash -
apt -y install nodejs
git clone https://github.com/libersoft-org/solidity-dao-registry.git
cd solidity-dao-registry/src
npm i
```

### CentOS / RHEL / Fedora Linux

Log in as "root" on your server and run the following commands to download the necessary dependencies and the latest version of this software from GitHub:

```console
dnf -y update
dnf -y install curl git
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
dnf -y install nodejs
git clone https://github.com/libersoft-org/solidity-dao-registry.git
cd solidity-dao-registry/src/
npm i
```

## Deployment:

1. Create the ".secret" file and put there your wallet mnemonic phrase (24 words) - you need to have some gas on it
2. Register on etherscan.io, polygonscan.com, bscscan.com etc. (depends on which blockchain you'd like to deploy these smart contracts on) and create your new API key
3. Create a file named ".apikey_*" and add your API key on the first line of this file ("*" means block explorer name, e.g.: etherscan, polygonscan, bscscan ...)
4. Edit the "deploy.js" file in /scripts file and set contracts variables depending on your needs
5. Install dependencies and run deploy script:

```console
./deploy.sh
```

6. Follow the instructions on the screen

## License

This software is developed as open source under [**Unlicense**](./LICENSE).
