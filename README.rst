miku-edit
=========

Hatsune Miku/VOCALOID-oriented text editor themes, for both Howl and Atom.

Installing
**********

Howl
^^^^

Via `Aisu <https://github.com/kirbyfan64/aisu>`_: use the install URL:
https://github.com/kirbyfan64/aisu

Manually::

  $ mkdir -p ~/.howl/bundles
  $ cd ~/.howl/bundles
  $ git clone https://github.com/kirbyfan64/miku-edit.git

Or::

  $ cd ~
  $ git clone https://github.com/kirbyfan64/miku-edit.git
  $ ./build.py install:howl

To change your theme, add to ``init.moon``::

  howl.config.theme = 'Miku'


Atom
^^^^

Install ``miku-edit-syntax``. To install manually::

  $ cd ~
  $ git clone https://github.com/kirbyfan64/miku-edit.git
  $ ./build.py install:atom

Rebuilding the assets
*********************

::

  $ ./build.py assets

FAQ
***

Where is the background picture from?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The `Magical Mirai official site <http://magicalmirai.com/2017/>`_, in particular
`here <http://magicalmirai.com/2017/images/common/top_main_miku.png>`_.

The text is hard to read!
^^^^^^^^^^^^^^^^^^^^^^^^^

Try a different font. Fonts from the
`codeface collection <https://github.com/chrissimpkins/codeface>`_ in particular are quite
good; I use Google's *Roboto Mono*.
