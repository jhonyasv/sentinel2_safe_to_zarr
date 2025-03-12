# Sentinel-2 SAFE to Zarr Conversion

This repository provides a [Jupyter Notebook](notebook/SAFE_to_Zarr.ipynb) that demonstrates how to convert **Sentinel-2** data from the **SAFE** format to the **cloud-native Zarr** format. The workflow is designed for users familiar with SAFE but new to Zarr.

# 📌 Features

* Extracts Sentinel-2 bands from the SAFE format.

* Uses Dask and Xarray for efficient processing.

* Converts bands into a cloud-friendly Zarr format.

* Visualizes RGB composites and NDVI from both SAFE and Zarr.

* Compares processing times for performance evaluation.

# 📂 Dataset

The Sentinel-2 data should be stored in the *data/* directory in SAFE format before running the notebook.

🔧 Installation

1. Clone this repository:
```
git clone https://github.com/jhonyasv/sentinel2_safe_to_zarr.git
cd sentinel2_safe_to_zarr
```
2. Create a virtual environment (optional but recommended):
```
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```
3. Install dependencies:
```
pip install -r requirements.txt
```
## 🚀 Usage

Run the Jupyter Notebook:
```
jupyter notebook sentinel2_safe_to_zarr.ipynb
```

## 🖼️ Outputs

* RGB images for SAFE and Zarr formats.

* NDVI visualization.



## 📖 References

* Dask Documentation

* Xarray Documentation

* rioxarray

* Sentinel-2 SAFE format

## 🔗 Contributing

Feel free to open issues and submit pull requests to improve the workflow!
