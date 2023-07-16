from src.lambdas.main import handler


def test_handler():
    assert handler(None, None) is None
