# UK-NSS High Performance Linpack (HPL) benchmark

This repository contains the instructions for running the standard HPL
benchmark as part of the UK-NSS procurement.

## Status

Stable

## Maintainers

- @aturner-epcc ([https://github.com/aturner-epcc](https://github.com/aturner-epcc))

## Overview

### Software

- [HPL](https://www.netlib.org/benchmark/hpl/)


## Building the benchmark

**Important:** All results submitted should be based on a version of HPL that
meets [Top500 submission guidelines](https://top500.org/resources/frequently-asked-questions/).

### Permitted modifications

Offerors are permitted to modify the benchmark in any way compatible with Top500
submission guidelines.

## Running the benchmark

### Required tests

The bidder is required to run the following tests

- Single node HPL performance
  + Single node HPL runs across all compute nodes that run for at least 1 hour.
  + The difference between the maximum measured single-node performance and the minimum
    measured single-node performance must be equal to or less than 5% of the mean measured single-node performance.
- Full system HPL performance
  + A full system run of HPL using a minimum of 99% of all compute nodes under Top500/Green500 
    conditions that runs for at least 12 hours.
  + This run should provide data for a valid Top500/Green500 submission including power draw data.

## Reporting results

The primary figure of merit (FoM) is the HPL performance in Gflops.

The bidder should provide:

- For the single node runs: the minimum, maximum and mean single node HPL performance
  across all nodes
- Details on how the tests were run, including any batch job submission
  scripts and HPL input files
- All data printed to STDOUT by the HPL software for all HPL runs (single node and full system)
- Data on energy use (in kWh) for each HPL run and peak power draw (in kW)
  for each HPL run (per node for single node runs and aggregate for full system runs)

## License

This benchmark description and associated files are released under the MIT license.
