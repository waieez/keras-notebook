Setup for following along with http://course.fast.ai/

# Getting Started (Pull OR Build)

## Pull

```
  # terminal

  docker pull waieez/keras-notebook:latest
```

## Build

```
  # terminal

  ./setup.sh
  # If you want to rename the image please make sure you are thorough!
  # They're hardcoded in the scripts and Dockerfiles!
```

# Running

```
  # terminal

  ./run.sh

  ...

  The Jupyter Notebook is running at: http://0.0.0.0:8888/?token=$SOME_GENERATED_TOKEN
```

## OR

```
  # .bash_profile

  jn() {
    docker run --rm -it -v $PWD:/src -v $PWD/data:/data -p 8888:8888 -e "KERAS_BACKEND=tensorflow" waieez/keras-notebook:latest
  }
```

```
  # terminal

  cd $NOTEBOOK_DIR
  jn

  ...
  
  The Jupyter Notebook is running at: http://0.0.0.0:8888/?token=$SOME_GENERATED_TOKEN
```

Then open it up in your browser!

# Adding packages

## Update the Scipy dockerfile
```
  # ScipyDockerfile

  ...

  RUN conda install --quiet --yes \

  ...

  #ADD YOUR PACKAGE HERE

  ...

  conda remove --quiet --yes --force qt pyqt && \
  
  ...
```

## Build it!

```
  # terminal

  ./scipy.sh $VERSION
```