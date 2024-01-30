# Robot Framework Starter Project 🤖

Welcome to the Robot Framework Starter Project! 🚀 This project is designed to help you kickstart your journey into web automation testing using the powerful Robot Framework.

## Getting Started

### Prerequisites
- [Python](https://www.python.org/downloads/) installed
- Familiarity with basic programming concepts

### Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/ferdyciputra/robot-starter-project.git

2. Navigate to the project directory:
   ```bash
   cd robot-starter-project

3. Install dependencies:
   ```bash
   pip install robotframework
   pip install robotframework-seleniumlibrary
   pip install webdriver-manager
   pip install docutils
   
### Resources File
In Robot Framework, a resource file is a file that contains reusable keywords, variables, and other settings that can be used across multiple test cases or test suites.
We write a resources file in the `Resources` directory.

### Running Tests
1. Execute the specific sample test:
   ```bash
   python -m robot -d results tests/authentication/Login.robot
   
2. Execute the all sample test:
   ```bash
   python -m robot -d results tests

3. Explore and modify the existing test cases in the `Tests` directory.

### See All Report Tests
You can see a report test in the `Results` directory with name file `report.html`

### Learn More
[Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)\
[Robot Framework Selenium Library](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)

## Contributing
Contributions are welcome! Whether you're fixing bugs, improving documentation, or adding new features, your input is valuable. Follow these steps to contribute:

1. Fork the repository.
   
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   
3. Commit your changes:
   ```bash
   git commit -m "Add your feature or fix"
   
4. Push to the branch:
   ```bash
   git push origin feature/your-feature-name
   
5. Open a pull request.