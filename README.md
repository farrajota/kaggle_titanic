# Titanic: Machine Learning from Disaster challenge

My attempt at the [Titanic: Machine Learning from Disaster](https://www.kaggle.com/c/titanic) Kaggle competition. This repo contains the code to predict which passengers survived the Titanic shipwreck. The code is available via jupyter notebooks and its divided into two main notebooks:

- `notebooks/Data Analysis and Visualizations.ipynb` has all the data analysis and data visualization code used for the Titanic dataset
- `notebooks/Machine Learning with Scikit-learn.ipynb` has the code for building up models for predicting the survival label of the passengers of the Titanic test set and for building the predicted results for submission on Kaggle using **Scikit-learn**
- `notebooks/Machine Learning with PySpark.ipynb` has the code for building up models for predicting the survival label of the passengers of the Titanic test set and for building the predicted results for submission on Kaggle using **PySpark**

> Note: The Machine learning notebook requires that the data visualizations notebook has been run so that the processed data is available for use by this notebook.

## Requirements

- Python3 (3.6 recommended)
- jupyter
- [scipy stack](https://www.scipy.org/stackspec.html) (pandas, scipy, scikit-learn, etc.)
- pyspark (v2.3.0)
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

To run the notebooks using docker, you first need to build the container's docker image. To do so, you just need to do the following:

- i) Build the container using a Makefile macro:

    ```bash
    $ make build
    ```

- ii) Run the container using a command:

    ```bash
    $ docker image build -t jupyter_spark_custom .
    ```

Then, to start the container you can:

- i) Run the container using a Makefile macro:

    ```bash
    $ make run
    ```

- ii) Run the container using a command:

    ```bash
    $ docker run --rm -p 8888:8888 -v "$PWD"/notebooks:/home/jovyan/work --name jupyter_kaggle_titanic jupyter_spark_custom
    ```

## Setting up the data

To run the cells in the notebooks, you must first download the data for the Titanic challenge. You can get it from [Kaggle](https://www.kaggle.com/c/titanic/data) directly and you should put the `train.csv` and `test.csv` files inside the `notebooks/data/` directory.

> Note: The data needed to run the notebooks is not provided by this repo.

## License

[MIT License](LICENSE)
