import argparse

parser = argparse.ArgumentParser(description="Filter logs by keyword")
parser.add_argument("filename", help="Log file to scan")
parser.add_argument("keyword", help="Keyword to search for")
args = parser.parse_args()

with open(args.filename, "r") as f:
    for line in f:
        if args.keyword.lower() in line.lower():
            print(line.strip())
