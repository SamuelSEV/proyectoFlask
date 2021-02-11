from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL

app = Flask(__name__)

#conexion msql
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'vuelosflask'
mysql = MySQL(app)

# configuraciones
app.secret_key = 'miclave'

@app.route('/')
def Index():
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM vuelos')
    data = cur.fetchall()
    print(data)

    return render_template('index.html', vuelos = data)

@app.route('/agregar', methods=['POST'])
def agregar():
    if request.method == 'POST':
        vuelo = request.form['vuelo']
        compañia = request.form['compañia']
        hora = request.form['hora']
        cur = mysql.connection.cursor()
        cur.execute('INSERT INTO vuelos (vuelo, compañia, hora) VALUES (%s, %s, %s)', (vuelo, compañia, hora))
        mysql.connection.commit()
        flash('Vuelo agregado correctamente')
        return redirect(url_for('Index'))

@app.route('/editar/<id>')
def obtener_vuelo(id):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM vuelos WHERE id = %s', (id))
    data = cur.fetchall()
    return render_template('editar-vuelo.html', vuelo = data[0])

@app.route('/modificar/<id>', methods = ['POST'])
def modificar(id):
    if request.method == 'POST':
        vuelo = request.form['vuelo']
        compañia = request.form['compañia']
        hora = request.form['hora']
        cur = mysql.connection.cursor()
        cur.execute("""UPDATE vuelos SET vuelo = %s, compañia = %s, hora = %s WHERE id = %s""", (vuelo, compañia, hora, id))
        mysql.connection.commit()
        flash('Vuelo modificado correctamente')
        return redirect(url_for('Index'))


@app.route('/borrar/<string:id>')
def borrar(id):
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM vuelos WHERE id = {0}'.format(id))
    mysql.connection.commit()
    flash('Vuelo eliminado correctamente')
    return redirect(url_for('Index'))

if __name__ == '__main__':
    app.run('port' = PORT, debug = True)
