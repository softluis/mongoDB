import pymongo
import datetime

from pymongo import MongoClient
 client = MongoClient('localhost', 27017)
 client = MongoClient('mongodb://localhost:27017/')
 
 db = client.test_database
 db = client['test-database']
 
 collection = db.test_collection
 collection = db['test-collection']
 
 post = {"author": "Mike",
         "text": "My first blog post!",
        "tags": ["mongodb", "python", "pymongo"],
        "date": datetime.datetime.utcnow()}
		
		
posts = db.posts
post_id = posts.insert_one(post).inserted_id
post_id