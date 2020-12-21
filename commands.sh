# creating webapp
az webapp up -n udacityflaskmlapp -l eastasia --sku B1

#log details
az webapp log tail

#ceating virtual environment
python3 -m venv ~/.myrepo
source ~/.myrepo/bin/activate
