Aulaton
=======

_Introducción_

Un proyecto que busca construir un sitio para que los docentes puedan compartir experiencias sobre cómo usaron las netbooks del Programa Conectar Igualdad para enseñar diferentes temas. Podrán cargar sus experiencias y al mismo tiempo ver y valorar experiencias de otros y otras docentes de todo el país. El nombre subraya la posibilidad de trascender las fronteras del aula y compartir experiencias.

_Para correr la aplicación_

* Ejecuta **_bundle install --without staging production_**, para instalar las dependencias del proyecto.
* Ejecuta **_PADRINO_ENV=development bundle exec padrino rake db:migrate_**, para inicializar las tablas de la base de datos.
* Ejectua **_bundle exec padrino start_**, para deployar la aplicación.
