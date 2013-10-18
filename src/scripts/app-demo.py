'''
@author: eleonorvinicius
'''
import psycopg2, time

try:
    conn = psycopg2.connect("host='localhost' dbname='tdc' user='tdc' password='tdc'")
except:
    print "connect exception"

cur = conn.cursor()

'''
transformar para uma thread
'''
while True:
    try:
        print("select * from mensagem ({})".format(time.time()))
        cur.execute("select * from mensagem;")
        time.sleep(1)
        print("select * from pessoa({})".format(time.time()))
        cur.execute("select * from pessoa;")
        time.sleep(1)
        print("select * from pessoa({})".format(time.time()))
        cur.execute("select * from pessoa;")
    except:
        print "select exception"