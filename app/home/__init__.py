#开发人员：林泽鑫
#开发实践：2019/9/29 19:55
#文件名称：__init__.py
#开发工具: PyCharm

from flask import Blueprint

home = Blueprint("home",__name__)
import app.home.views
