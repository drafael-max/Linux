ps aux | grep ssh 
ls -l | sort -k5

# 1 parte: Ver quién está conectado por SSH en este momento

# ps aux → muestra TODOS los procesos que están corriendo en el sistema
#   - a = procesos de todos los usuarios
#   - u = formato detallado (usuario, %CPU, %RAM, etc.)
#   - x = incluye procesos sin terminal (como servicios sshd)

ps aux | grep ssh

# El pipe "|" envía toda la lista de procesos a "grep"
# grep ssh → filtra y muestra solo las líneas que contengan la palabra "ssh"
# Lo que verás normalmente:
#   - Una línea con "sshd" (el servicio SSH del sistema)
#   - Una o varias líneas con "sshd: usuario@..." (cada sesión activa de SSH)
# Si hay muchas líneas así → hay muchas personas conectadas por SSH ahora mismo

# 2 parte: Listar archivos ordenados por tamaño

# ls -l → lista archivos en formato largo (permisos, dueño, tamaño, fecha, nombre)
ls -l | sort -k5

# sort -k5 → ordena usando la columna número 5
# La columna 5 de "ls -l" es exactamente el tamaño del archivo en bytes
# Por defecto ordena de menor a mayor → verás primero los más pequeños
