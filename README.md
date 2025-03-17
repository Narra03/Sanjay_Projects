# Credit Card Default Prediction
## Project Overview
This project focuses on predicting the likelihood of credit card clients defaulting on payments based on historical data. Using machine learning techniques, it evaluates different classification models and visualizes the results. The dataset used is from the UCI Machine Learning Repository and contains information about credit card clients, including their demographic and financial data.

## Libraries Used
The following Python libraries are used in this project:

pandas for data manipulation
numpy for numerical operations
matplotlib and seaborn for data visualization
sklearn for machine learning models and metrics
imblearn for handling class imbalance
plotly for interactive visualizations
kneed for identifying the optimal number of clusters in KMeans

## Project Steps
* Importing Necessary Libraries: Various libraries for data processing, model building, and evaluation are imported.
* Downloading the Dataset: The dataset default_of_credit_card_clients is fetched from the UCI Machine Learning Repository.
* Data Preprocessing: Features and target variables are separated, and preprocessing steps are performed.
* Model Building: Different classifiers such as Decision Trees, Random Forests, Support Vector Classifiers, K-Nearest Neighbors, Naive Bayes, and Gradient Boosting are trained and evaluated.
* Model Evaluation: Performance is evaluated using metrics like confusion matrix, classification report, ROC curve, and AUC score.
* Visualizations: Interactive plots are generated to visualize the data distribution, model performance, and other insights.
* Key Features
* Data Processing: Feature scaling using MinMaxScaler and StandardScaler.
* Model Training: Multiple classification algorithms are implemented to predict credit card defaults.
* Class Imbalance Handling: SMOTE (Synthetic Minority Over-sampling Technique) is used to handle class imbalance.
* Performance Metrics: Detailed evaluation using metrics such as confusion matrix, ROC curve, AUC score, and classification report.
* Visualization: Interactive plots and graphs to better understand model performance and data trends.
## Dataset
The dataset used in this project is the Default of Credit Card Clients Dataset from the UCI Machine Learning Repository. It contains information on credit card clients, such as:

* Demographics (age, gender, education, marital status)
* Credit history (history of payment, credit utilization)
* Target variable indicating whether the client defaulted or not
## Running the Project
* Install the required libraries using pip:
* Copy code
pip install ucimlrepo pandas numpy matplotlib seaborn scikit-learn imbalanced-learn plotly kneed
Download the dataset and create a dataframe:

* python
Copy code
from ucimlrepo import fetch_ucirepo
default_of_credit_card_clients = fetch_ucirepo(id=350)
X = default_of_credit_card_clients.data.features
y = default_of_credit_card_clients.data.targets
Follow the steps in the notebook to preprocess the data, train models, and evaluate performance.

## Conclusion
This project provides a detailed analysis and predictive modeling approach for credit card default prediction. The various classifiers and techniques used here can help in understanding patterns in financial data and making informed predictions for future credit card clients.
