# Notes

## Command Line for Unix and Windows

|            Action             |  Unix  | Windows |              Notes               |
| :---------------------------: | :----: | :-----: | :------------------------------: |
|    Print working directory    |  pwd   |   pwd   |                                  |
|       Change directory        |   cd   |   cd    |                                  |
|        Make directory         | mkdir  |         |                                  |
|         List contents         |   ls   |   dir   |    -a to include hidden files    |
|       Remove directory        | rmdir  |         | Only works if directory is empty |
| Remove directory and contents | rm -rf |         |                                  |
|          Create file          | touch  |         |                                  |
|          Remove file          |   rm   |         |                                  |

## Docker

|               Action                |                  Command                   |                                                                             Notes                                                                              |
| :---------------------------------: | :----------------------------------------: | :------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|             List images             |             `docker image ls`              |                                                                                                                                                                |
|       List running containers       |                `docker ps`                 |                                                                                                                                                                |
|         List all containers         |               `docker ps -a`               |                                                                                                                                                                |
|      Remove all docker things       |           `docker system prune`            |                                                                                                                                                                |
|        Remove unused images         |            `docker image prune`            |                                                                                                                                                                |
|    Remove non running containers    |          `docker container prune`          |                                                                                                                                                                |
|      Get output from container      |               `docker logs`                |                                                                                                                                                                |
|      Start a stopped container      |       `docker start <container_id>`        |                                                                                                                                                                |
|     Stop container with SIGTERM     |        `docker stop <container_id>`        |                                                                                                                                                                |
|     Stop container with SIGKILL     |        `docker kill <container_id>`        |                                                                                                                                                                |
| Run extra commands inside container | `docker exec -it <container_id> <command>` | `-i` makes stuff you type get set to the STDIN and back from the STDOUT and STDERR processes. `-t` makes it get show up on your screen in nicely formatted way |
|      Copy file into container       |   `docker cp <path> <container_id:path>`   |                                                                                                                                                                |

## tmux

Remember shift key for lots of the characters in these commands

|            Action            |                      Command                       |               Notes               |
| :--------------------------: | :------------------------------------------------: | :-------------------------------: |
|           Install            |              `sudo apt install tmux`               |                                   |
| Create new pane to the right |                     `Ctrl+b %`                     |                                   |
|            Start             |                       `tmux`                       |                                   |
|    Create new pane below     |                     `Ctrl+b "`                     |                                   |
|    Navigate between panes    |    `Ctrl+b →` `Ctrl+b ←` `Ctrl+b ↑` `Ctrl+b ↓`     |                                   |
|      Close current pane      |                       `exit`                       |                                   |
|      Create new window       |                     `Ctrl+b c`                     |                                   |
|  Switch to window by number  |              `Ctrl+b [WINDOW NUMBER]`              |                                   |
|    Rename current window     |        `Ctrl+b ,` + `[NEW NAME]` + `Enter`         |                                   |
|         Close window         |      `exit` when there is only one pane left       |                                   |
|        Detach session        |                     `Ctrl+b d`                     |                                   |
|   List background sessions   |                     `tmux ls`                      |                                   |
|      Attach to session       |          `tmux attach -t [SESSION NAME]`           |                                   |
|        Rename session        | `tmux rename-session -t [CURRENT NAME] [NEW NAME]` |   name is 0, 1, etc by defualt.   |
|      Create new session      |            `tmux new -s [SESSION NAME]`            | `tmux` names it after next number |
|        Delete session        |       `tmux kill-session -t [SESSION NAME]`        |                                   |
|  Enter scroll mode in pane   |                     `Ctrl+b [`                     |         `q` to quit mode          |

## Unix

Various Linux and/or MacOS things that I find myself forgetting how to do a lot

### Commands

|                Action                 |              Command              |                                    Notes                                    |
| :-----------------------------------: | :-------------------------------: | :-------------------------------------------------------------------------: |
| Add a directory to start of your PATH |  `export PATH=<DIRECTORY>:$PATH`  |                                                                             |
|    Get the size of of a directory     |       `du -sh <DIRECTORY>`        | [See more](https://linuxize.com/post/how-get-size-of-file-directory-linux/) |
|  Change the ownership of a directory  | `sudo chown -R <username> <path>` |                                                                             |

## Excel

|      Action      |     Mac     |   Windows   |                                                   Notes                                                    |
| :--------------: | :---------: | :---------: | :--------------------------------------------------------------------------------------------------------: |
| Go to first cell | `Ctrl+home` | `Ctrl+home` | On a MacOS laptop this means `Ctrl+fn+left arrow`. On a desktop keyboard there are home up and down arrows |
