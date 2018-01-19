import os


def get_env_variable(name):

    try:
        return os.environ[name]
    except KeyError:
        raise KeyError(f'Env variable {name} not set.')
