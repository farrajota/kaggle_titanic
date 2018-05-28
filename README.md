# Titanic: Machine Learning from Disaster challenge

My attempt at the [Titanic: Machine Learning from Disaster](https://www.kaggle.com/c/titanic) Kaggle competition. This repo contains the code to predict which passengers survived the tragedy.

## WARNING

Work in progress...

## Requirements

- Python3 (3.6 recommended)
- jupyter
- [scipy stack](https://www.scipy.org/stackspec.html) (pandas, scipy, scikit-learn, etc.)
- docker (optional, recommended)
- docker-compose (optional, recommended)

## Getting started

The code is available via jupyter notebooks for easier use.

To run these notebooks, you need to start a jupyter server. Here, you can do it in two ways:

- a) run a local jupyter server or
- b) run a self-contained docker image.

### Run a local jupyter server

To start the jupyter server you must first have python + jupyter installed. The quickest way to accomplish this is by installing [anaconda](https://www.anaconda.com/download/).

After installing anaconda, you should create an environment:

```bash
$ conda create -n py36_jupyter python=3.6 anaconda
```

This command will install the recommended version of CPython and the necessary packages to run the code.

Finally, to start a jupyter server you simply need to run the following command:

```bash
$ jupyter notebook
```

### Run a self-contained docker image

To run the notebooks using docker, you can:

- i) Run the container:

    ```bash
    $ make run

    # or

    $ docker image build -t jupyter_titanic .
    $ docker container run --rm -p 8080:8080 --name jupyter_notebook jupyter_titanic
    ```

- ii) Run the container using `docker-compose`:

    ```bash
    $ make up
    $ make logs  # shows the login url + token

    # or

    $ docker-compose up -d
    $ docker-compose logs  # shows the login url + token
    ```

## Setting up the data

To run the cells in the notebooks, you must first download the data for the Titanic challenge. You can get it from [Kaggle](https://www.kaggle.com/c/titanic/data) directly and you should put the `train.csv` and `test.csv` files inside the `notebooks/data/` directory.

> Note: The data needed to run the notebooks is not provided by this repo.

## License

[MIT License](LICENSE)
