# stackoverflow-time-series
Sample Project using Facebooks Prophet library for Time Series Forecasting. 
The dataset contains 11 years of data from various Stackoverflow topics.

The project can be conveniently setup using Docker, the custom image 
1. Uses a Jupyter base image
2. Set permission rules
3. Installs library dependencies needed to run Prophet
4. Runs Jupyter Notebook exposing port 8888

To run the server locally, navigate to the project directory and run `docker-compose up`.
In a local browser type we can connect to the remote jupyter server by typing `http://127.0.0.1:10000/?token=<YOUR_TOKEN>` in the URL bar.

For simplicity, the repo does not contain code relating to the topics of model cross validation and hyperparameter tuning.
It also does not put emphasis on the visualisation of time series and predictions. 
Instead the focus is on a basic use case of the Prophet library, running a Seasonal Decomposition in the process and finally predicting the number of questions asked on a given month.


![Project Screenshot](project_screenshot.jpg)
