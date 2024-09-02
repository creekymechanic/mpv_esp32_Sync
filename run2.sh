#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Name of the virtual environment
VENV_NAME="$HOME/.venvs/video_loop_env"

# Name of the Python script
PYTHON_SCRIPT="video_loop_script.py"

# Check if virtual environment exists
if [ ! -d "$VENV_NAME" ]; then
    echo "Creating virtual environment..."
    python3 -m venv $VENV_NAME --system-site-packages
fi

# Activate virtual environment
source $VENV_NAME/bin/activate

# Upgrade pip within the virtual environment
pip install --upgrade pip

# Install requirements
echo "Installing requirements..."
pip install -r requirements2.txt

# Run the Python script
echo "Running the Python script..."
python $PYTHON_SCRIPT

# Deactivate virtual environment
deactivate