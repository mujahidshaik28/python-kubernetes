FROM amazonlinux:2

# Install Python and pip
RUN yum install -y python3 python3-pip git

# Clone the repository
RUN git clone https://github.com/mujahidshaik28/flightpriceprediction.git

# Set working directory
WORKDIR /flightpriceprediction

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Run the Python application
CMD python3 app.py
