# Run with docker build --build-arg GIT_REPO="account/repo"
FROM us.gcr.io/anvil-gcr-public/anvil-rstudio-bioconductor:3.15.0
ARG GIT_REPO
RUN git clone https://github.com/${GIT_REPO} && cd $(echo "${GIT_REPO}" | awk -F/ '{print $NF}') && ls vignettes/* | grep ".qmd" | xargs -i bash .github/scripts/install_missing.sh {}
