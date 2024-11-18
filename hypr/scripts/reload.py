#!/usr/bin/python

import subprocess 
import argparse

class Toolkit:
    def IsRunning(process_name: str) -> bool:
        result = subprocess.run(['pgrep', '-x', process_name], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        return result.returncode == 0


class Waybar:
    def Stop():
        subprocess.run(['killall', '--', 'waybar'])

    def Run():
        subprocess.Popen('waybar', stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, close_fds=True)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Reload component scripts')
    parser.add_argument('component', type=str, help='Component name')

    args = parser.parse_args()

    if args.component == 'waybar':
        if Toolkit.IsRunning(args.component):
            Waybar.Stop()
        Waybar.Run()
