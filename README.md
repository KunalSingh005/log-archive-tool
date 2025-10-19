# Log Archive Tool

A simple but powerful command-line tool written in Bash to archive and compress log files. This script takes a directory path as input, compresses its contents into a timestamped `.tar.gz` file, and stores it in a dedicated `archives` directory.

## Features

-   **Command-Line Interface:** Easy to use directly from the terminal.
-   **Timestamped Archives:** Creates unique archive names with the current date and time (e.g., `logs_archive_20251019_153000.tar.gz`).
-   **Input Validation:** Checks if a directory path is provided and if it's a valid directory.
-   **Success/Failure Checks:** Confirms whether the archive was created successfully.

## How to Use

1.  **Save the Script:**
    Save the code into a file named `log-archive.sh`.

2.  **Make it Executable:**
    ```sh
    chmod +x log-archive.sh
    ```

3.  **Run the Script:**
    Provide the path to the directory you want to archive. For system logs, you might need `sudo`.
    ```sh
    # Example with a general directory
    ./log-archive.sh /path/to/your/logs

    # Example with system logs
    sudo ./log-archive.sh /var/log
    ```
    The compressed file will be saved in a new folder named `archives`.

    ## Project Source

This project was completed as part of the backend developer roadmap from roadmap.sh.

**Project Page URL:** [https://roadmap.sh/projects/server-stats](https://roadmap.sh/projects/log-archive-tool)
