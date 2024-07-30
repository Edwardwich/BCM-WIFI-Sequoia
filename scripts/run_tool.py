import sys
import os

def run_tool_file(file_path):
    # Read the .tool file and execute necessary commands
    with open(file_path, 'r') as file:
        content = file.read()
        print(f"Running .tool file with content: {content}")

        # Add your logic to process the .tool file here
        # For demonstration, we will just print the content
        # You can replace this with actual execution logic

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python run_tool.py <path-to-tool-file>")
        sys.exit(1)
    
    tool_file_path = sys.argv[1]
    if not os.path.isfile(tool_file_path):
        print(f"File not found: {tool_file_path}")
        sys.exit(1)
    
    run_tool_file(tool_file_path)
