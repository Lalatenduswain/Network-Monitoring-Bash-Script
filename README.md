# Network Monitoring Bash Script

This bash script automates network monitoring by pinging multiple IP addresses and sending email notifications for both successful and failed pings.

## Disclaimer | Running the Script

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

## Donations

If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).

## Usage

### Cloning the Repository

To clone this repository, run the following command:

```bash
git clone https://github.com/Lalatenduswain/Network-Monitoring-Bash-Script.git
```

### Running the Script

1. Navigate to the directory where the script is located:

```bash
cd Network-Monitoring-Bash-Script
```

2. Make the script executable:

```bash
chmod +x ping.sh
```

3. Execute the script:

```bash
./ping.sh
```

### Configuring Cron Job

To automate the execution of the script at regular intervals, you can set up a cron job on your system. Open the crontab configuration by running `crontab -e` and add a line to schedule the script execution. For example, to run the script every 5 minutes, you can add the following line:

```
*/5 * * * * /path/to/ping.sh
```

Replace `/path/to/ping.sh` with the actual path to your script.

## License

This project is licensed under the [MIT License](LICENSE).
