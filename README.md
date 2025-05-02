# Bank Customer Churn Prediction

This project is about predicting customer churn for a bank using machine learning. The goal is to build a model that can predict which customers are likely to leave the bank based on their behavior and demographics.

## Features
- **Data Download:** A PowerShell script is included to automatically download the dataset from Kaggle if it’s not already on your local machine. The script works both in the Kaggle cloud environment and locally using the Kaggle API.
- **Data Exploration:** Performed exploratory data analysis (EDA) with Pandas and Seaborn to uncover insights and trends in the dataset.
- **Model Building:** Built and trained a neural network model using TensorFlow/Keras. Three models were tested:
  - **Basic Model**
  - **Optimized Model**
  - **Over-Optimized Model**
- **Model Evaluation:** Evaluated the models based on recall and accuracy, finding that the optimized model struck the best balance with a recall of about 0.7 and accuracy of 0.82.

## Setup
1. **Local Setup:**
   - Install the dependencies listed in `requirements.txt`.
   - Set the environment variable `LOCAL_FILE_LOCATION` to the local folder where the dataset is stored.
   - If the dataset isn’t available locally, the PowerShell script will download it.

2. **Running the Jupyter Notebook:**
   - Clone this repo and navigate to the project folder.
   - Run the Jupyter notebook:
     ```bash
     jupyter notebook churn_modeling.ipynb
     ```

## Libraries Used
- **Pandas** for data manipulation.
- **Seaborn** for visualizing the data.
- **TensorFlow/Keras** to build and optimize the neural network model.
- **Sklearn** for model evaluation and metrics.
- **PowerShell** to handle dataset downloads.

## Results
- **Recall:** 0.7  
- **Accuracy:** 0.82  
- The optimized model was the best performer, balancing accuracy and recall to predict customer churn.
