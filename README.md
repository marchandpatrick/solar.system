# R example repository for codecov.io

[![Build Status](https://travis-ci.org/mrtyormaa/solar.system.svg?branch=master)](https://travis-ci.org/mrtyormaa/solar.system) [![codecov](https://codecov.io/gh/mrtyormaa/solar.system/branch/master/graph/badge.svg)](https://codecov.io/gh/mrtyormaa/solar.system)

# Travis CI [BUild Automation]

[Travis CI](https://travis-ci.com) is a hosted continuous integration and
deployment system. You can now test and deploy open source and private projects
on [travis-ci.com](https://travis-ci.com)! You can read more about this change 
[here](https://blog.travis-ci.com/2018-05-02-open-source-projects-on-travis-ci-com-with-github-apps).

This repository contains the [central issue
tracker](https://github.com/travis-ci/travis-ci/issues) for the Travis CI
project.

## Documentation

Documentation for the Travis CI project can be found at
<https://docs.travis-ci.com>.


# Code Coverage [Test COverage Report]

## Using Travis CI

Append to your `.travis.yml`

```yml
r_packages:
  - covr

after_success:
  - Rscript -e 'library(covr); codecov()'
```


### Diagnose code coverage update problems (using travis)

If your code coverage badge is not updated you should check the travis log first:

1. Check that the travis build was successful

The badge must look like this: ![](build_passing.png)


2. Open the travis build log

Click on the travis build badge (picture) to open the build log.

At the end you can see code coverage section:

![](Rscript_covr.png)

</br>

3. Open the log details of the code coverage

Click on the small triangle at the left side of "$ Rscript..." to see all log details:

![](Rscript_covr_success.png)

</br>

If you do **not** see

```R
$uploaded
[1] TRUE
```

there was a problem and you will see the error message here.

If the error message is from the `covr` package you can try to find the problem by calling `covr`
on your local computer when the package source code is in the current directory with this R command:

```R
covr::package_coverage(type = "tests")
```


# Contact
Point of contact in case of queries regarding the project
* [Asutosh Satapathy](https://gitlab.com/mrtyormaa) - asa@ase.ch
