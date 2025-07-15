# import matplotlib
# matplotlib.use("TkAgg") 

import os
import numpy as np
import pandas as pd
import sqlalchemy as sql
import matplotlib.pyplot as plt
import sklearn.metrics as sk_mec
import sklearn.linear_model as sk_lineal

os.system("clear")

######################################################
##----------------load_data_and_table---------------##
######################################################

#-------------inf_para_la_conexion_con_qtl-----------#
user    =   "root"
host    =   "localhost"
password    =   "password"
database    =   "datos_01"

#--------------------creando_conexion----------------#
conex   =   sql.create_engine(
        f"mysql+mysqlconnector://{user}:{password}@{host}/{database}"
        )

#------------------Imporat_table---------------------#
tabla   =   pd.read_sql_table("lineal", con=conex)

######################################################
##--------------manipulacion_de_datos---------------##
######################################################

#-------------separando_datos_de_la_tabla------------#
x_datos =   tabla.drop(columns=["var_y"])
y_datos =   tabla["var_y"]

#------------------regresion_lineal------------------#
regre   = sk_lineal.LinearRegression()
regre.fit(x_datos, y_datos)

y_regre =   regre.predict(x_datos)

b   =   regre.intercept_
print("punto de corte: ", b)

for i in range(1):
    m   =   regre.coef_[i] 
    print(f"pendiente {i+1}: {m}")
    
print("confianza coeficiente: ", sk_mec.r2_score(y_datos, y_regre))

######################################################
##----------------graficando_datos------------------##
######################################################

#-----------------datos_á_graficar-------------------#
x_graf = x_datos
y_graf = y_datos

x_graf_reg  =   x_datos
y_graf_reg  =   y_regre

#---------creando_y_modificando_la_grafica-----------#
plt.figure(facecolor="#1D1D1D")

plt.plot(x_graf_reg, y_graf_reg, color="#00CCDE", label= r"$f(x) = $" + str(m) + r"$x + $" + str(b))    
plt.scatter(x_graf, y_graf, color="#E53681", marker="o")
plt.grid(True, linestyle="dashed", color="#ffffff", alpha=0.5)

plt.xlabel("x", color="#5AEDA3")
plt.xticks(color="#5AEDA3")

plt.ylabel("f(x)", color="#5AEDA3")
plt.yticks(color="#5AEDA3")

plt.title("Regresión lineal", color="#5AEDA3", fontsize="15")

plt.gca().set_facecolor("#353535")

legend = plt.legend(fontsize=10)
legend.get_frame().set_facecolor("#1D1D1D")
legend.get_frame().set_edgecolor("#000000")
legend.get_frame().set_alpha(1.0)
legend.get_texts()[0].set_color("#5AEDA3")

# plt.savefig("grafica.png")
plt.show()
