# Fuzzy Logic-Based Maternal Mental Health Risk Assessment

## 📋 Project Overview
This project presents a novel approach to assessing maternal mental health risks, specifically focusing on **Postpartum Depression (PPD)**. By integrating **Fuzzy Logic** with **Machine Learning (Random Forest)** and optimizing with **Differential Evolution (DE)**, we aim to create a robust, interpretable, and accurate risk assessment tool.

The system is designed to handle the uncertainty inherent in medical data and is tailored to the demographic referencing **NDHS 2022** and **Nepal Census 2021** statistics.

## ✨ Key Features
- **Synthetic Data Generation**: Creates statistically accurate datasets based on real-world distributions (WHO, NDHS) to overcome data scarcity.
- **Hybrid Methodology**: Combines the interpretability of Fuzzy Logic with the predictive power of Random Forest.
- **Optimization**: Implements **Differential Evolution (DE)** to fine-tune fuzzy membership functions, enhancing model performance.
- **Comprehensive Analysis**: Includes crisp encoding, fuzzification, and comparative analysis of baseline vs. optimized models.

## 📂 Project Structure

| Directory | Description |
|-----------|-------------|
| `Data_Synthesis/` | Notebooks for generating synthetic maternal health data. |
| `Feature_Engineering/` | Scripts for data preprocessing, crisp encoding, and feature fuzzification. |
| `Model_Development_and_Training/` | Random Forest implementation and Differential Evolution optimization algorithms. |

## 🚀 Getting Started

### Prerequisites
- Python 3.8+
- Jupyter Notebook

### Installation
1. **Clone the repository:**
   ```bash
   git clone <repository_url>
   cd Fuzzy-Logic-Based-Maternal-Mental-Health-Risk-Assessment
   ```

2. **Create a virtual environment (optional but recommended):**
   ```bash
   python -m venv env
   # Windows
   .\env\Scripts\activate
   # Linux/Mac
   source env/bin/activate
   ```

3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

## 🛠️ Usage Workflow

1.  **Data Generation**:
    Navigate to `Data_Synthesis/` and run `02_Data_Generation.ipynb` to create the dataset.

2.  **Feature Engineering**:
    Go to `Feature_Engineering/` to preprocess the data using `01_Encoding_and_Fuzzification_of _Features.ipynb`.

3.  **Model Training & Optimization**:
    Explore `Model_Development_and_Training/`. 
    - Start with `01_Random_Forest_without_Differential_Evolution.ipynb` for the baseline.
    - Run `03_Random_Forest_with_Differential_Evolution.ipynb` to see the optimization in action.

## 📊 References
- **NDHS 2022**: Nepal Demographic and Health Survey.
- **WHO Guidelines**: World Health Organization standards for maternal health.
- **Nepal Census 2021**: Demographic statistics.

---
*Created for the research on specialized AI applications in maternal healthcare.*
