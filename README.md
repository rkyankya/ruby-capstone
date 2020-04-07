
# Capstone project: Build your own linter

### Additional description about the project and its features

## Built With

- Ruby [ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-linux]]


## Code testing cleaning tools

- Stickler ci (Ruby in the repository)

## Build your own linter background
The project description in from Microverse capstone projects on the Ruby section [Link to Description:](https://www.notion.so/Build-your-own-linter-b17a3c22f7b940c98ca1980250720769)

## Installation
> This is a simple linter for ruby files and informs about formatting errors on local repos.
### Requirements

- ruby > 2.6.x
- git > 2.x
- bundler > 2.x

### Steps

From the command line:

   `$ git clone https://https://github.com/rkyankya/ruby-capstone.git`

### Install dependecies

Go to the root folder of the project and execute:

   `$ cd ruby-capstone/`

   `$ bundler`

### Execution

You have to select a local directory to run the linter:

   `$ bin/main.rb `
    
### Example
You can run the file scripts/create_repos.sh in order to create local repos to test the linter

`$ chmod 755 scripts/create_repos.sh`

`$ scripts/create_repos.sh`

In the root folder of the project, execute the linter:
   ` $ bin/main.rb`
   
Should be displayed the next output:

![offenses](./assets/offense.png)

You can enable or disable the test validations in the .commicop.yml file in the root directory

![validations](./assets/validation.png)

## Author
Feel free to reach out to me with any of the links below
**Kyankya Raymond**
   

 - [Github](https://github.com/rkyankya)
 - [Twitter](https://twitter.com/rkyankya)
 - [Linkedin](https://www.linkedin.com/in/kyankya-raymond-79461215a/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/rkyankya/ruby-capstone/issues).

## Show your support

Give a ⭐️ if you like this project!


## 📝 License

This project is [MIT](LICENSE) licensed.

