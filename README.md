# Kaido

# Kaido Ideas
Kaido is built on top of the the idea that we loved the navigation shortcuts we could use in terminals (e.g. Ctrl + a to go the beginning, Ctrl + e to go the end of line and etc) but most modern editors don't support that. Fortunately those shortcuts were available in GNU Emacs. So we took GNU Emacs and enabled the CuaMode for it (so that copy/paste/cut would be changed to normal shortcuts used elsewhere) and we added the dynamic config loading to it based on the file extention Kaido opened. So the idea is that you can have same key-binding for various jobs, Kaido understands the context that you are working in and loads needed Contextes for that project.

# Usage
```
git clone https://github.com/kaido-editor/Kaido.git
cd Kaido
sudo sh ./installer.sh
```

# License

Kaido is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or any later version.

Kaido is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

All the documents of Kaido that locate in 'doc' directories release under the term of GNU FDL.
