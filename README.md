# 🚀 mkpyenv v2.0.0: Fast Python Project Initialization CLI
License: MIT

## 💡 What is mkpyenv?

**mkpyenv** (Make Python Environment) is a simple **Bash command-line interface (CLI)** tool designed to eliminate setup overhead for new Python projects.

Instead of manually creating directories, isolating environments, and bootstrapping starter files, you run one command, and mkpyenv builds a complete, ready-to-use project structure based on your needs.

---

## ✨ Key Features

* **One Command Setup:** Initialize an entire project with a single command.
* **Virtual Environment (.venv):** Automatically creates a clean, isolated Python environment.
* **Template Support:** Choose between a simple standard script or a structured data science project.
* **File Hydration:** Automatically replaces placeholders like `{{PROJECT_NAME}}` in your configuration and starter files.
* **Reliability:** Built with **`set -e`** and **`set -o pipefail`** for robust error handling and immediate exit on failure.
* **Self-Documenting:** Use `mkpyenv --help` for immediate usage instructions (**Now fully functional and reliable!**).

---

## ⚠️ Critical Update Notice (v2.0.0)

**If you are running a previous version (v1.x), it is now deprecated and will not run.**

The previous version contained a bug where the `--help` flag failed, and it lacked critical error handling. Older versions will now intentionally exit with a non-zero status and provide an update command.

**To ensure you are running the latest, fixed version, please execute the update command:**

```bash
# This command finds the location of your current script and overwrites it with v2.0.0.
curl -sL [https://raw.githubusercontent.com/ianktoo/mkpyenv-cli/main/mkpyenv](https://raw.githubusercontent.com/ianktoo/mkpyenv-cli/main/mkpyenv) -o "$(which mkpyenv)" && chmod +x "$(which mkpyenv)"


-----

## 🛠️ Installation

### Prerequisites

You must have the `python3-venv` package installed:

```bash
sudo apt update
sudo apt install python3-venv
```

### Setup Steps

1.  **Clone the Repository:**

    ```bash
    git clone [https://github.com/ianktoo/mkpyenv-cli.git](https://github.com/ianktoo/mkpyenv-cli.git)
    cd mkpyenv-cli
    ```

2.  **Copy the Script and Templates:** Copy the script executable and the templates to your preferred local binary directories.

    ```bash
    # 1. Copy the script executable to your personal PATH directory (e.g., ~/bin)
    mkdir -p $HOME/bin
    cp mkpyenv $HOME/bin/
    chmod +x $HOME/bin/mkpyenv

    # 2. Copy the templates to your configuration path
    cp -r templates $HOME/
    ```

3.  **Reload Your Shell:** If the script doesn't work immediately, ensure your shell's `PATH` includes `$HOME/bin`. Simply close and reopen your terminal, or run:

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
| `standard` | General-purpose scripting. | Root: `main.py`, `.venv`, `README.md`, `LICENSE` |
| `data` | Organized data science/ML projects. | Root: `README.md`, `.venv`, `.env`, `requirements.txt` / Folders: `data/` (raw/processed), `src/`, `notebooks/` |

-----

## 🙋 Getting Help

If you forget the usage, the fixed tool provides immediate assistance:

```bash
mkpyenv --help
```

## 📄 License

This project is licensed under the MIT License. See the `LICENSE` file for details.

```
```
