import sqlalchemy  # noqa: F401


def main():
    sqlalchemy.create_engine("sqlite:///:memory:")


if __name__ == "__main__":
    main()
