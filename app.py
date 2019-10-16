#开发人员：林泽鑫
#开发实践：2019/9/29 19:09
#文件名称：app.py
#开发工具: PyCharm
# coding:utf8
from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "<h1 style='color:blue'>lzx</h1>"

if __name__ == "__main__":
    app.run()