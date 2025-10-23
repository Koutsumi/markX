from pymongo import MongoClient
from dotenv import load_dotenv
import os
from robot.api.deco import keyword

load_dotenv()

password = os.getenv("MONGO_PASSWORD")
project = os.getenv("MONGO_PROJECT")

connection_string = f"mongodb+srv://qax:{password}@cluster0.mrk5r0v.mongodb.net/{project}?retryWrites=true&w=majority&appName=Cluster0"

client = MongoClient(connection_string)
db = client[project]

@keyword('Remove task from database')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    print('Removendo a tarefa ' + task_name)