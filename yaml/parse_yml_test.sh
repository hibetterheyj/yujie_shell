SETUP_SCRIPTS_DIR=$(python3 parse_yaml.py ./test.yaml --get setup_scripts_dir)
echo "SETUP_SCRIPTS_DIR: $SETUP_SCRIPTS_DIR"

echo "Number of scripts in SETUP_SCRIPTS_DIR:" $(ls -1 "${SETUP_SCRIPTS_DIR}"/*".sh" | wc -l)
