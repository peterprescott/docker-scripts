import webbrowser # to open web browser
from sys import argv

address = argv[1]

webbrowser.open(f'http://{address}')
