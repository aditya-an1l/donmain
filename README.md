<div align="center">
<h1> 🧔 DONMAIN : A Simple Domain Enumerator </h1>
<h3>Made with Perl</h3>
</div>
<div align="center"><p>
    <a href="https://github.com/aditya-an1l/donmain/pulse">
      <img alt="Last commit" src="https://img.shields.io/github/last-commit/aditya-an1l/donmain?style=for-the-badge&logo=git&color=ebeb46&logoColor=FFFFFF&labelColor=000000"/>
    </a>
    <a href="https://github.com/aditya-an1l/donmain/blob/main/LICENSE">
      <img alt="License" src="https://img.shields.io/github/license/aditya-an1l/donmain?style=for-the-badge&logo=apache&color=7c675f&logoColor=FFFFFF&labelColor=000000" />
    </a>
    <a href="https://github.com/aditya-an1l/donmain/stargazers">
      <img alt="Stars" src="https://img.shields.io/github/stars/aditya-an1l/donmain?style=for-the-badge&logo=starship&color=ebeb46&logoColor=FFFFFF&labelColor=000000" />
    </a>
    <a href="https://github.com/aditya-an1l/donmain/issues">
      <img alt="Issues" src="https://img.shields.io/github/issues/aditya-an1l/donmain?style=for-the-badge&logo=gitbook&color=7c675f&logoColor=FFFFFF&labelColor=000000" />
    </a>
    <a href="https://github.com/aditya-an1l/donmain">
      <img alt="Repo Size" src="https://img.shields.io/github/repo-size/aditya-an1l/donmain?color=ebeb46&label=SIZE&logo=files&style=for-the-badge&logoColor=FFFFFF&labelColor=000000" />
    </a>
    <a href="https://twitter.com/intent/follow?screen_name=aditya_an1l">
      <img alt="Follow on X" src="https://img.shields.io/twitter/follow/aditya_an1l?style=for-the-badge&logo=x&color=7c675f&logoColor=FFFFFF&labelColor=000000" />
    </a>
</p></div>

---

A simple Lightweight Domain Enumerator Perl script for enumerating subdomains of a given domain using a wordlist.

## 🚀 Description

This tool reads a list of potential subdomains from a file and checks if they resolve to valid DNS records for the specified domain. It is useful for discovering subdomains during security assessments or reconnaissance.

## ✨ Features

- Reads subdomains from a wordlist file.
- Performs DNS queries to check for valid subdomains.
- Lightweight and easy to use.

## 📦 Prerequisites

- Perl installed on your system.
- The `Net::DNS` Perl module installed.

## 🛠️ Installation

### 1. Install Perl
Ensure Perl is installed on your system. You can check by running:
```bash
perl -v
```

If Perl is not installed, you can install it using your package manager:

- **Debian/Ubuntu**:
  ```bash
  sudo apt-get install perl
  ```

- **Red Hat/CentOS**:
  ```bash
  sudo yum install perl
  ```

### 2. Install the `Net::DNS` Module
Install the `Net::DNS` Perl module using one of the following methods:

- **Using CPAN**:
  ```bash
  cpan Net::DNS
  ```

- **Using `cpanm`**:
  ```bash
  cpanm Net::DNS
  ```

- **Using System Package Manager**:
  - Debian/Ubuntu:
    ```bash
    sudo apt-get install libnet-dns-perl
    ```
  - Red Hat/CentOS:
    ```bash
    sudo yum install perl-Net-DNS
    ```

### 3. Download the Script
Clone this repository or download the `subdomain_enum.pl` script.

## 🚀 Usage

1. Prepare a wordlist file (e.g., `subdomains.txt`) with potential subdomain names, one per line. Example:
   ```
   www
   mail
   ftp
   test
   dev
   ```

2. Run the script:
   ```bash
   ./subdomain_enum.pl <domain> <wordlist>
   ```

   Example:
   ```bash
   ./subdomain_enum.pl example.com subdomains.txt
   ```

3. The script will output the results, indicating which subdomains were found and which were not.

## 📄 Example Output

```
Found: www.example.com
Not found: mail.example.com
Found: ftp.example.com
Not found: test.example.com
Found: dev.example.com
```

## 🤝 Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to open an issue or submit a pull request.

## 📜 License

This project is licensed under the Apache License 2.0 . See the [LICENSE](LICENSE) file for details.

---

The emojis add a bit of visual flair to the headers while keeping the content professional and easy to read. Let me know if you’d like further tweaks! 😊
