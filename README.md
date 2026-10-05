
<!-- README.md is generated from README.Rmd. Please edit that file -->

# GEO712-repository-Yihao Xin

<!-- badges: start -->

<!-- badges: end -->

This repository contains my coursework for **GEO712**. It is set up as a
reproducible R project: package versions are recorded with
[{renv}](https://rstudio.github.io/renv/), and the repository is
version-controlled with Git and hosted on GitHub.

# My Research Interest

My main research interest is **detecting and characterizing forest
structure using multi-source Synthetic Aperture Radar (SAR) data**. I am
particularly interested in integrating observations from *Sentinel-1
C-band, NISAR L-band, and BIOMASS P-band* to investigate how radar
signals at different wavelengths respond to forest structural
characteristics. Because these wavelengths interact with different parts
of the forest canopy and woody components, combining them may provide
complementary information for detecting and estimating forest structure.
My research aims to explore the potential of multi-frequency SAR
observations for more accurate and robust forest monitoring across
different forest conditions.

# Favorites

## Favorite Music

1.  Because - Crayon Case
2.  失去爱情的摩托车手 - THE BOOTLEGS
3.  Graduation Song - Murphy Radio
4.  Castles - Japanese Football
5.  漂流人间 - Chinese Football

## Favorite Equation

My favorite equation is the **Fourier transform**:

$$
F(\omega) = \int_{-\infty}^{\infty} f(t)e^{-i\omega t}\,dt
$$

## Favorite Artists

| Name                | Achievements                |
|:--------------------|:----------------------------|
| Johannes Vermeer    | *Girl with a Pearl Earring* |
| Edvard Munch        | *The Scream*                |
| Frank Weston Benson | *Summer*                    |
| Claude Monet        | *Woman with a Parasol*      |
| Ilya Repin          | *What Freedom!*             |

# A Chunk of Code

The following R code creates a small table of the SAR missions I am
interested in, with their approximate radar wavelengths:

``` r
sar <- data.frame(
  mission = c("Sentinel-1", "NISAR", "BIOMASS"),
  band = c("C", "L", "P"),
  wavelength_cm = c(5.6, 24, 69)
)
sar
#>      mission band wavelength_cm
#> 1 Sentinel-1    C           5.6
#> 2      NISAR    L          24.0
#> 3    BIOMASS    P          69.0
```
