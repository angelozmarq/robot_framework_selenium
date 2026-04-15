# 🤖 Robot Framework with SeleniumLibray #

This project demonstrates professional patterns including the **Page Object Model** (POM), **Data-Driven Testing** via JSON, and optimized dependency management with [uv](https://pypi.org/project/uv/).

---
### 🤖 Prerequisites
- Python 3.10+ (https://www.python.org/downloads/)
- uv: Install it via pip install uv or follow the official guide.

---
### 🤖 Installation & Setup
1. Clone the repository:
    - `git clone https://github.com/angelozmarq/robot_framework_selenium.git`
    - `cd <your-folder>`

2. Sync Dependencies: *uv will automatically create a virtual environment and install everything defined in pyproject.toml*.
    - `uv sync`

---
### 🤖 Project Structure
```
.
├── data/
│ ├── constants.resource        # Robot constant variables for reuse
│ ├── login_data.json           # JSON Data Source
├── resources/
│ ├── common.resource           # Global setups, teardowns, and screenshots
│ ├── pages/
│ │ └── login_page.resource     # POM Keywords
│ ├── locators/
│ │ └── login_locators.py       # Python-based UI Locators for easier declaration
├── tests/
│ └── login_tests.robot         # Tests
├── utilities/
│ └── json_utilities.resource   # Reading the JSON and storing as suite variable
├── robot.args                  # Standardized CLI configurations
└── pyproject.toml              # Dependencies
```

---
### 🤖 Running the Tests
1. The Standard Way (Uses robot.args)
This uses the configurations defined in the argument file (Headless, Results folder, etc.).
    * `uv run robot -A robot.args tests/`
2. Overriding the Browser (Headed Mode)
See the browser opening on your screen:
    * `uv run robot -A robot.args --variable BROWSER:chrome tests/`

---
### 🤖 Data-Driven
The project uses a JSON-based approach for login:

**JSON**

```
{
    "standard_user": {
        "username": "standard_user",
        "password": "secret_password"
    },
    ...
}
```

The Login keyword in login_tests.robot automatically fetches these values based on the ${role} argument passed in the Test Case.

---
### ⚖️ License

This project is licensed under the MIT License. See the LICENSE file for details.