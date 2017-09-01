#!/usr/bin/env python3


PIC = 'http://magicalmirai.com/2017/images/common/top_main_miku.png'


from pathlib import Path
import ast, os


os.chdir(os.path.dirname(__file__))


HOME = Path(os.environ.get('HOME') or os.environ.get('USERPROFILE'))

ASSET_BASE = 'assets/base.png'
ASSET_BLANK_BG = 'assets/blank-bg.png'
ASSET_LAYER = 'assets/layer.png'
ASSET_BG = 'assets/bg.png'


from tinymk import *


@task()
def download():
    run(['curl', '-Lo', ASSET_BASE, PIC])


@task()
def assets():
    out, _ = run(['identify', '-format', '(%[fx:w],%[fx:h])', ASSET_BASE],
                 get_output=True)
    width, height = ast.literal_eval(out.decode('utf-8'))
    run(['convert', '-size', '%dx%d' % (width, height), 'xc:#06757f', ASSET_BLANK_BG])
    run(['convert', ASSET_BASE, '-channel', 'a', '-evaluate', 'set', '5%', '+channel',
         ASSET_LAYER])
    run(['convert', ASSET_BLANK_BG, ASSET_LAYER, '-composite', ASSET_BG])


@task('install:howl')
def install_howl():
    target_dir = HOME / '.howl' / 'bundles'
    target_dir.mkdir(exist_ok=True)
    (target_dir / 'miku-edit').symlink_to(Path().absolute())


@task('install:atom')
def install_atom():
    run(['apm', 'link'], cwd='atom')


if __name__ == '__main__':
    main()
