import logging

from flexfielddb import create_app, init_logging, read_config

config = read_config()
app = create_app(config)
init_logging(app.config['LOG_LEVEL'], app.config['LOG_FILENAME'])
logging.info('Starting flexfielddb...')
