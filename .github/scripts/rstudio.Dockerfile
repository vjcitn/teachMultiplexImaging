FROM bioconductor/bioconductor_docker:devel
RUN curl -O https://raw.githubusercontent.com/almahmoud/teachMultiplexImaging/main/.github/scripts/install_missing.sh && ls vignettes/* | grep ".qmd" | xargs -i bash install_missing.sh {} && rm install_missing.sh
