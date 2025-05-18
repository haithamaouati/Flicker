# Flicker
Capture website screenshots

```
  _____   _   _          _                  
 |  ___| | | (_)   ___  | | __   ___   _ __ 
 | |_    | | | |  / __| | |/ /  / _ \ | '__|
 |  _|   | | | | | (__  |   <  |  __/ | |   
 |_|     |_| |_|  \___| |_|\_\  \___| |_| 
```

## Install

To use the Flicker script, follow these steps:

1. Clone the repository:

    ```
    git clone https://github.com/haithamaouati/Flicker.git
    ```

2. Change to the Flicker directory:

    ```
    cd Flicker
    ```
    
3. Change the file modes
    ```
    chmod +x flicker.sh
    ```
    
5. Run the script:

    ```
    ./flicker.sh
    ```

## Usage
Usage: `./flicker.sh -u <url>`

##### Options:

`-u`, `--url`     Target website URL

`-h`, `--help`    Show this help message

## Dependencies

The script requires the following dependencies:

- [figlet](): `pkg install figlet - y`
- [curl](https://curl.se/): `pkg install curl - y`

Make sure to install these dependencies before running the script.

## Author

Made with :coffee: by **Haitham Aouati**
  - GitHub: [github.com/haithamaouati](https://github.com/haithamaouati)

## License

Flicker is licensed under [WTFPL license](LICENSE)
