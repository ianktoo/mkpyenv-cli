# 🚀 mkpyenv: Fast Python Project Initialization CLI

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 💡 What is mkpyenv?

**mkpyenv** (Make Python Environment) is a simple command-line interface (CLI) tool written in **Bash** that helps you stop wasting time setting up new Python projects.

Instead of manually creating directories, virtual environments, `.gitignore`, and starter files, you run one command, and **mkpyenv** builds a complete, ready-to-use project structure based on your needs.

## ✨ Key Features

* **One Command Setup:** Initialize an entire project with a single command.
* **Virtual Environment (.venv):** Automatically creates a clean, isolated Python environment.
* **Template Support:** Choose between a simple `standard` script or a structured `data` science project.
* **File Hydration:** Automatically replaces placeholders like `{{PROJECT_NAME}}` in your `README.md` and starter files.
* **Self-Documenting:** Use `mkpyenv --help` for immediate usage instructions.

---

## 🛠️ Installation

Follow these steps to install `mkpyenv` on your Ubuntu/WSL2 system.

### Prerequisites

You must have the **`python3-venv`** package installed:

```bash
sudo apt update
sudo apt install python3-venv
````

### Setup Steps

1.  **Clone the Repository:**

    ```bash
    git clone https://github.com/ianktoo/mkpyenv-cli.git
    cd mkpyenv-cli
    ```

2.  **Run the Installer:**
    The `install.sh` script copies the necessary files and templates to your system's configuration paths (`~/bin` and `~/templates`).

    ```bash
    chmod +x install.sh
    ./install.sh
    ```

3.  **Reload Your Shell:**
    If the script reports that `$HOME/bin` is not in your `PATH`, simply close and reopen your terminal, or run:

    ```bash
    source ~/.bashrc
    ```

-----

## 🚀 Usage

The script takes one mandatory argument (the project name) and one optional argument (the template type).

### 1\. Default (Standard) Project

Use this for simple scripts, small command-line tools, or quick testing.

```bash
mkpyenv my-new-utility
# OR
mkpyenv my-new-utility standard
```

### 2\. Data Science Project

Use this template for complex data analysis, ML projects, or anything requiring separate folders for raw data and source code.

```bash
mkpyenv data-analysis-2025 data
```

-----

## 📁 Template Breakdown

| Template | Purpose | Directory Structure |
| :--- | :--- | :--- |
| **standard** | General-purpose scripting. | **Root:** `main.py`, `.venv`, `README.md`, `LICENSE` |
| **data** | Organized data science/ML projects. | **Root:** `README.md`, `.venv`, `.env`, `requirements.txt` <br> **Folders:** `data/` (raw/processed), `src/`, `notebooks/` |

-----

## 🙋 Getting Help

If you forget the usage, just ask the tool for help:

```bash
mkpyenv --help
```

## 📄 License

This project is licensed under the **MIT License**. See the [LICENSE](https://www.google.com/search?q=LICENSE) file for details.
