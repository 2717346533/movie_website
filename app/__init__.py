# 开发人员：林泽鑫
# 开发实践：2019/9/29 19:54
# 文件名称：__init__.py
# 开发工具: PyCharm

from flask import Flask, render_template
from datetime import datetime
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql://root:123456@127.0.0.1:3306/movie"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = True
app.config["SECRET_KEY"] = 'e97bfed3-e185-4a6f-9bb3-5f2f84089614'
app.config["UP_DIR"] = os.path.join(os.path.abspath(os.path.dirname(__file__)),"static/uploads/")
app.config["FC_DIR"] = os.path.join(os.path.abspath(os.path.dirname(__file__)),"static/uploads/users/")
app.debug = True
db = SQLAlchemy(app)

from app.home import home as home_blueprint
from app.admin import admin as admin_blueprint

app.register_blueprint(home_blueprint)
app.register_blueprint(admin_blueprint, url_prefix="/admin")


@app.errorhandler(404)
def page_not_found(error):
    return render_template("home/404.html"), 404
