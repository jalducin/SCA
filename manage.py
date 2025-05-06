# Archivo manage.py simulado
#!/usr/bin/env python
import os
import sys

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "sca.settings")  # ⚠️ Asegúrate que sea el nombre correcto de tu proyecto
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "No se pudo importar Django. Asegúrate de que esté instalado en el contenedor."
        ) from exc
    execute_from_command_line(sys.argv)
