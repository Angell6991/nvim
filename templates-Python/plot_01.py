import  matplotlib.pyplot   as  plt
import  numpy   as  np
import  os

os.system("clear")

x   =   np.linspace(0, 2*np.pi, 100)
y   =   np.sin(x)

#----------------Configuración_para_usar_LaTeX_en_matplotlib-------------#
# plt.rcParams.update(
#     {
#         "text.usetex": True,
#         "font.family": "serif",
#         "font.serif": ["Computer Modern Roman"],
#     }
# )

plt.figure(facecolor="#1D1D1D")

plt.plot(x, y, color="#00CCDE", label=r"$ sin(x) $")    # color: #E53681
plt.grid(True, linestyle="dashed", color="#ffffff", alpha=0.5)

plt.xlim(0, 2*np.pi)
plt.xlabel("x", color="#5AEDA3", fontsize= "10")
plt.xticks(
    [0, np.pi/2, np.pi, (3*np.pi)/2, 2*np.pi], 
    [r"$0$", r"$\frac{\pi}{2}$", r"$\pi$", r"$\frac{3\pi}{2}$", r"$2\pi$"], 
    color="#5AEDA3"
)

plt.ylabel("f(x)", color="#5AEDA3", fontsize="10")
plt.yticks(color="#5AEDA3")

plt.title("Función seno", color="#5AEDA3", fontsize="15")

plt.gca().set_facecolor("#353535")

legend = plt.legend(fontsize="15")
legend.get_frame().set_facecolor("#1D1D1D")
legend.get_frame().set_edgecolor("#000000")
legend.get_frame().set_alpha(0.8)
legend.get_texts()[0].set_color("#5AEDA3")

# plt.savefig("grafica.pdf")
# plt.savefig("grafica.png")
plt.show()


