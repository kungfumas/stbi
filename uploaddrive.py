from google.colab import files
import pandas as pd
import io
upload_files = files.upload()
for filename in upload_files.keys():
 data = pd.read_csv(io.StringIO(upload_files[filename].decode('utf-8')), header=None)
print(data.head())