# Project Data Description

This document describes the two forest datasets used for the GEO712 project.
It follows the WHO, WHAT, WHEN, WHERE, WHY, and HOW questions from the data
management activity.

## 1. Data sources

### NEON HARV 2025

The first source is a selected 2025 subset from the National Ecological
Observatory Network (NEON) Harvard Forest site (HARV, site code D01). The
local package includes:

- 1-m canopy-height-model (CHM) GeoTIFF tiles;
- classified and colorized airborne LiDAR point clouds in LAZ format;
- RGB orthophoto tiles;
- 2025 vegetation field-inventory tables in CSV format; and
- metadata, file inventories, SHA-256 checksums, and QA/QC reports.

These are existing observational data collected and processed by NEON. I
downloaded and organized the selected subset for this project. I will create
derived data by linking field plots to remote-sensing tiles and calculating
forest-structure measures such as height percentiles, canopy cover, and
plot-level summaries.

### Hyytiälä UAV point-cloud dataset

The second source is the public *Hyytiälä UAV Point Cloud Demo Dataset -
2025*, a clipped subset of a larger forest survey at Hyytiälä SMEARII in
Finland. Its supplied metadata identifies Zenodo record
[10.5281/zenodo.20793895](https://doi.org/10.5281/zenodo.20793895).

The release contains `cloud7_clip.las`, a LAS 1.2 point cloud with RGB
values, metre units, and coordinate reference system EPSG:32635 (WGS 84 /
UTM zone 35N). The coordinate scale is 0.0001 m. The metadata states that
the source was produced through a DJI L2 workflow, processed with DJI Terra
4.5.18.1, and exported using CloudCompare. It is an existing public dataset,
not data collected by me. I will preserve the original file and metadata and
create only derived summaries or visualizations.

## 2. Information about the data

### Who collected, processed, owns, and documents the data?

- **NEON HARV:** NEON collected and processed the observatory products.
  NEON documentation and product metadata are the authoritative sources for
  collection procedures and variable definitions. I selected, organized,
  documented, and will process the downloaded subset.
- **Hyytiälä:** The Zenodo metadata lists Jon Atherton and Iiro Erik
  Miettinen as creators and lists Miettinen as a data collector affiliated
  with the University of Helsinki. The Zenodo record is the source for
  ownership, licensing, citation, and contact information.
- **Project outputs:** I will own the project-specific scripts, processing
  records, derived tables, and figures that I create, subject to the source
  licenses and attribution requirements.

### What are the data about?

Together, the datasets describe forest structure using complementary field,
airborne, and UAV observations. Field tables contain vegetation or tree
records, plot identifiers, coordinates, dates, and associated attributes.
LiDAR and UAV point clouds contain three-dimensional point locations and,
where supplied, classification and RGB attributes. CHM rasters contain
canopy-height values, while RGB orthophotos provide image information.

The main formats are CSV, LAZ, LAS, GeoTIFF, GeoJSON, JSON, XML, HTML, and
PDF. These are open or widely documented formats, although point-cloud
software may be needed for efficient processing. Original metadata and QA/QC
reports will be retained as documentation.

Data quality is not assumed to be uniform. NEON products include metadata
and quality reports that I will review. The Hyytiälä source explicitly says
that it is provided “as is” and that no formal quality assessment was
performed for the public release. Before analysis, I will check file
integrity, CRS, spatial bounds, units, missing values, point density,
classification, and plausible height ranges.

### When were the data collected and processed?

Both sources concern 2025 observations or releases. The HARV package
contains 2025 field-inventory records and selected remote-sensing products.
The Hyytiälä record describes a 2025 UAV survey. Download dates, processing
dates, source versions, software versions, and any date transformations will
be recorded in the project manifest.

### Where were the data collected and where are they kept?

The NEON observations are from the HARV site in the NEON D01 domain,
Harvard Forest. The Hyytiälä observations are from SMEARII in Finland.
Spatial joins will be performed only after checking the declared CRS and
extent of each product. The Hyytiälä point cloud uses EPSG:32635.

The raw files are stored outside this Git repository on the local data
drive. They will be backed up to a second storage location. This repository
stores documentation, scripts, small derived tables, and reproducible
references rather than the multi-gigabyte raw LiDAR and imagery archive.

### Why were the data collected and how will they be used?

The source observations support ecological and environmental monitoring. I
will use them for exploratory forest-structure analysis, comparison of field
and remotely sensed measurements, method development, visualization, and
reproducible coursework. I will not treat the Hyytiälä demonstration sample
as validated ground truth, and I will not use either source for unsupported
operational, engineering, commercial, or management decisions.

The processing workflow will:

1. preserve original files and checksums;
2. record source metadata before processing;
3. verify CRS, extent, dates, units, missingness, and file integrity;
4. link field plots to the appropriate CHM, LiDAR, orthophoto, or UAV data;
5. generate clearly named derived tables and figures; and
6. record software versions, parameters, warnings, and validation results.

## 3. Legal and ethical restrictions

These are environmental observations and are not expected to contain
personal or human-subject information. I will still follow the source terms,
cite NEON and the Zenodo record, preserve attribution, and avoid
redistributing raw files without checking their distribution conditions.
The Hyytiälä metadata specifies a CC BY 4.0 license, which requires
attribution and identification of changes. If future field data contain
sensitive conservation, landowner, or access information, I will not publish
precise locations without permission.

## 4. Data-management strategies

Raw data will be treated as immutable. I will maintain checksums, source
metadata, QA/QC reports, a data dictionary, a source-to-derived lineage
table, and a processing changelog. Raw, intermediate, and derived data will
be kept in separate directories. Scripts and documentation will be
version-controlled, while large source files will remain outside GitHub and
be referenced by source URL, version, checksum, and local manifest entry.

## 5. File naming convention

Working files will use lowercase, descriptive, machine-readable names:

```text
<source>_<site>_<product>_<date-or-year>_<spatial-id>_<processing-level>.<ext>
```

Examples:

```text
neon_harv_chm_2025_tile-731000-4712000_raw.tif
neon_harv_lidar_2025_tile-731000-4712000_raw.laz
neon_harv_fieldinventory_2025_plot-summary_derived.csv
hyytiala_uav_pointcloud_2025_clip7_raw.las
hyytiala_uav_pointcloud_2025_clip7_qc-summary_derived.csv
```

Original source filenames will be preserved in a manifest. Processing status,
CRS, units, software, and version information will be recorded in companion
metadata rather than ambiguous abbreviations.

## 6. Standards and documentation

Relevant standards and best practices include NEON product definitions and
QA/QC reports, EPSG CRS identifiers, LAS/LAZ point-cloud conventions,
GeoTIFF geospatial metadata, CSV and UTF-8 text interchange, ISO 8601 dates,
SHA-256 checksums, and FAIR data principles. For every derived product I
will document the source filename and version, processing date, software and
package versions, parameters, CRS, units, exclusions, warnings, and quality
checks. A final manifest will link each figure or table to its raw source
and the exact code used to create it.
