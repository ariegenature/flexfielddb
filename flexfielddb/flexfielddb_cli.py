# To use this script with Flask, you should assign its path to the FLASK_APP environment variable
#
#     > export FLASK_APP=/path/to/flask_cli.py
#
# then you can simply run `flask run`. See <http://flask.pocoo.org/docs/0.12/cli/> for more
# information.

from flexfielddb import create_app, read_config

config = read_config()
app = create_app(config)
