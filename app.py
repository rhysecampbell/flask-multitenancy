import os
from flask import Flask, jsonify, abort
from models import db
from multi_db_management import get_tenant_session
from models import User

app = Flask(__name__)
app.secret_key = os.urandom(42)
app.config.from_pyfile('hello.cfg')
#app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://user:pwd@localhost/General?charset=utf8'
#app.config['SQLALCHEMY_BINDS'] = {}
db.init_app(app)


@app.route("/<tenant_name>/users")
def index(tenant_name):
    tenant_session = get_tenant_session(tenant_name)
    if not tenant_session:
        abort(404)
    users = tenant_session.query(User).all()
    return jsonify({tenant_name: [i.username for i in users]})


if __name__ == '__main__':
    app.run(debug=True)
